import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_image_dto.freezed.dart';
part 'cat_image_dto.g.dart';

@freezed
class CatImageDto with _$CatImageDto {
  const CatImageDto._();

  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory CatImageDto({
    @JsonKey(name: 'url') required String img,
  }) = _CatImageDto;

  factory CatImageDto.fromJson(Map<String, dynamic> json) =>
      _$CatImageDtoFromJson(json);
}
