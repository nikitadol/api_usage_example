// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryNameImpl _$$CountryNameImplFromJson(Map<String, dynamic> json) =>
    _$CountryNameImpl(
      common: json['common'] as String,
      official: json['official'] as String,
      nativeName: (json['nativeName'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, CountryName.fromJson(e as Map<String, dynamic>)),
          ) ??
          const {},
    );
