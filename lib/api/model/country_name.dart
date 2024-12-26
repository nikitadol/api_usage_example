import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_name.freezed.dart';
part 'country_name.g.dart';

@Freezed(
  toJson: false,
  fromJson: true,
)
class CountryName with _$CountryName {
  factory CountryName({
    required String common,
    required String official,
    @Default({}) Map<String, CountryName> nativeName,
  }) = _CountryName;

  factory CountryName.fromJson(Map<String, Object?> json) =>
      _$CountryNameFromJson(json);
}
