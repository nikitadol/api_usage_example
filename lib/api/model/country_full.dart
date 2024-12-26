import 'package:freezed_annotation/freezed_annotation.dart';

import 'country_flags.dart';
import 'country_name.dart';

part 'country_full.freezed.dart';
part 'country_full.g.dart';

@Freezed(
  toJson: false,
  fromJson: true,
)
class CountryFull with _$CountryFull {
  factory CountryFull({
    required CountryName name,
    @Default([]) List<String> tld,
    @Default([]) List<String> capital,
    @Default([]) List<String> altSpellings,
    @Default({}) Map<String, String> languages,
    @Default({}) Map<String, CountryName> translations,
    required double area,
    required String flag,
    required int population,
    @Default([]) List<String> timezones,
    required CountryFlags flags,
    required CountryFlags coatOfArms,
    required String startOfWeek,
  }) = _CountryFull;

  factory CountryFull.fromJson(Map<String, Object?> json) =>
      _$CountryFullFromJson(json);
}
