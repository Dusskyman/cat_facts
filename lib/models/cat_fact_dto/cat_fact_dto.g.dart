// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_fact_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatFactDto _$$_CatFactDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_CatFactDto',
      json,
      ($checkedConvert) {
        final val = _$_CatFactDto(
          fact: $checkedConvert('fact', (v) => v as String?),
          img: $checkedConvert('img', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_CatFactDtoToJson(_$_CatFactDto instance) =>
    <String, dynamic>{
      'fact': instance.fact,
      'img': instance.img,
    };
