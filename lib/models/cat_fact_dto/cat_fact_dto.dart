import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_fact_dto.freezed.dart';
part 'cat_fact_dto.g.dart';

@freezed
class CatFactDto with _$CatFactDto {
  const CatFactDto._();

  @JsonSerializable(
    fieldRename: FieldRename.snake,
    checked: true,
    explicitToJson: true,
  )
  const factory CatFactDto({
    @JsonKey(name: 'fact') required String fact,
  }) = _CatFactDto;

  factory CatFactDto.fromJson(Map<String, dynamic> json) =>
      _$CatFactDtoFromJson(json);
}
