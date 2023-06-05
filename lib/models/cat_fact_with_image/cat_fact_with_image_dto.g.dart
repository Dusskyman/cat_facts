// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_fact_with_image_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatFactWithImageDto _$$_CatFactWithImageDtoFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_CatFactWithImageDto',
      json,
      ($checkedConvert) {
        final val = _$_CatFactWithImageDto(
          fact: $checkedConvert('fact', (v) => v as String),
          img: $checkedConvert('img', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_CatFactWithImageDtoToJson(
        _$_CatFactWithImageDto instance) =>
    <String, dynamic>{
      'fact': instance.fact,
      'img': instance.img,
    };
