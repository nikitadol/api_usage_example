// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_full.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryFullImpl _$$CountryFullImplFromJson(Map<String, dynamic> json) =>
    _$CountryFullImpl(
      name: CountryName.fromJson(json['name'] as Map<String, dynamic>),
      tld: (json['tld'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      capital: (json['capital'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      altSpellings: (json['altSpellings'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      languages: (json['languages'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      translations: (json['translations'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, CountryName.fromJson(e as Map<String, dynamic>)),
          ) ??
          const {},
      area: (json['area'] as num).toDouble(),
      flag: json['flag'] as String,
      population: (json['population'] as num).toInt(),
      timezones: (json['timezones'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      flags: CountryFlags.fromJson(json['flags'] as Map<String, dynamic>),
      coatOfArms:
          CountryFlags.fromJson(json['coatOfArms'] as Map<String, dynamic>),
      startOfWeek: json['startOfWeek'] as String,
    );
