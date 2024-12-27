import 'package:freezed_annotation/freezed_annotation.dart';

import 'country_flags.dart';
import 'country_name.dart';

part 'country_general.freezed.dart';
part 'country_general.g.dart';

@Freezed(
  toJson: false,
  fromJson: true,
)
class CountryGeneral with _$CountryGeneral {
  factory CountryGeneral({
    required CountryName name,
    required CountryFlags flags,
  }) = _CountryGeneral;

  factory CountryGeneral.fromJson(Map<String, Object?> json) =>
      _$CountryGeneralFromJson(json);
}
