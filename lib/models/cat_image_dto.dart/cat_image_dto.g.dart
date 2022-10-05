// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_image_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatImageDto _$$_CatImageDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_CatImageDto',
      json,
      ($checkedConvert) {
        final val = _$_CatImageDto(
          img: $checkedConvert('url', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'img': 'url'},
    );

Map<String, dynamic> _$$_CatImageDtoToJson(_$_CatImageDto instance) =>
    <String, dynamic>{
      'url': instance.img,
    };
