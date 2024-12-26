import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_flags.freezed.dart';
part 'country_flags.g.dart';

@Freezed(
  toJson: false,
  fromJson: true,
)
class CountryFlags with _$CountryFlags {
  factory CountryFlags({
    String? png,
    String? alt,
  }) = _CountryFlags;

  factory CountryFlags.fromJson(Map<String, Object?> json) =>
      _$CountryFlagsFromJson(json);
}
