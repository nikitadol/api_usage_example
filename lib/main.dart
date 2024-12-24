import 'package:api_usage_example/main.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main.freezed.dart';
part 'main.g.dart';

void main() {
  runApp(ProviderScope(
    child: const RootApp(),
  ));
}

@Riverpod(
  keepAlive: true,
)
RootStackRouter router(Ref ref) {
  return AppRouter();
}

@AutoRouterConfig(
  replaceInRouteName: 'Screen|Page,Route',
)
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: AllCountriesListRoute.page,
        ),
      ];
}

@Riverpod(
  keepAlive: true,
)
Dio dio(Ref red) {
  return Dio(BaseOptions(
    baseUrl: 'https://restcountries.com/v3.1',
  ));
}

@Riverpod(
  keepAlive: true,
  dependencies: [
    dio,
  ],
)
RestCountriesClient restCountriesClient(Ref ref) {
  return RestCountriesClient(
    ref.watch(dioProvider),
  );
}

@RestApi()
abstract class RestCountriesClient {
  factory RestCountriesClient(Dio dio) = _RestCountriesClient;

  @GET('/all')
  Future<List<CountryGeneral>> all({
    @Query('fields') List<String> fields = const [
      'name',
      'flags',
    ],
  });
}

class RootApp extends ConsumerWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: ref.watch(routerProvider).config(),
    );
  }
}

@freezed
class CountryName with _$CountryName {
  factory CountryName({
    required String common,
    required String official,
    @Default({}) Map<String, CountryName> nativeName,
  }) = _CountryName;

  factory CountryName.fromJson(Map<String, Object?> json) =>
      _$CountryNameFromJson(json);
}

@freezed
class CountryFlags with _$CountryFlags {
  factory CountryFlags({
    required String png,
  }) = _CountryFlags;

  factory CountryFlags.fromJson(Map<String, Object?> json) =>
      _$CountryFlagsFromJson(json);
}

@freezed
class CountryGeneral with _$CountryGeneral {
  factory CountryGeneral({
    required CountryName name,
    required CountryFlags flags,
  }) = _CountryGeneral;

  factory CountryGeneral.fromJson(Map<String, Object?> json) =>
      _$CountryGeneralFromJson(json);
}

typedef CountryModel = ({
  String imageUrl,
  String name,
  String otherNames,
});

@riverpod
Future<List<CountryModel>> allCountries(
  Ref ref,
) async {
  final list = await ref.watch(restCountriesClientProvider).all();

  list.sort((a, b) => a.name.official.compareTo(b.name.official));

  return [
    for (final item in list)
      (
        imageUrl: item.flags.png,
        name: item.name.official,
        otherNames: item.name.nativeName.values
            .map((e) => e.official)
            .toSet()
            .join('\n'),
      ),
  ];
}

@RoutePage()
class AllCountriesListScreen extends StatelessWidget {
  const AllCountriesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All countries'),
        actions: [
          SearchAnchor(
            builder: (context, controller) => IconButton(
              onPressed: controller.openView,
              icon: const Icon(Icons.search),
            ),
            suggestionsBuilder: (context, controller) {
              controller.text;
              return [];
            },
          ),
        ],
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final List<CountryModel> items =
              ref.watch(allCountriesProvider).maybeWhen(
                    orElse: () => const [],
                    data: (value) => value,
                  );

          return ListView.separated(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];

              return ListTile(
                titleAlignment: ListTileTitleAlignment.titleHeight,
                onTap: () {},
                leading: SizedBox(
                  width: 98,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Image.network(
                      item.imageUrl,
                    ),
                  ),
                ),
                title: Text(item.name),
                subtitle: Text(item.otherNames),
              );
            },
            separatorBuilder: (context, index) => const Divider(),
          );
        },
      ),
    );
  }
}
