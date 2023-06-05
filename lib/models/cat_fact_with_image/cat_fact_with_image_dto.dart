import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_fact_with_image_dto.freezed.dart';
part 'cat_fact_with_image_dto.g.dart';

@freezed
class CatFactWithImageDto with _$CatFactWithImageDto {
  const CatFactWithImageDto._();

  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory CatFactWithImageDto({
    @JsonKey(name: 'fact') required String fact,
    @JsonKey(name: 'img') required String img,
  }) = _CatFactWithImageDto;

  factory CatFactWithImageDto.fromJson(Map<String, dynamic> json) =>
      _$CatFactWithImageDtoFromJson(json);
}
