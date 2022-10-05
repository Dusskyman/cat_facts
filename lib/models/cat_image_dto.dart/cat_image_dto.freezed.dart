// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cat_image_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatImageDto _$CatImageDtoFromJson(Map<String, dynamic> json) {
  return _CatImageDto.fromJson(json);
}

/// @nodoc
mixin _$CatImageDto {
  @JsonKey(name: 'url')
  String? get img => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatImageDtoCopyWith<CatImageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatImageDtoCopyWith<$Res> {
  factory $CatImageDtoCopyWith(
          CatImageDto value, $Res Function(CatImageDto) then) =
      _$CatImageDtoCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'url') String? img});
}

/// @nodoc
class _$CatImageDtoCopyWithImpl<$Res> implements $CatImageDtoCopyWith<$Res> {
  _$CatImageDtoCopyWithImpl(this._value, this._then);

  final CatImageDto _value;
  // ignore: unused_field
  final $Res Function(CatImageDto) _then;

  @override
  $Res call({
    Object? img = freezed,
  }) {
    return _then(_value.copyWith(
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CatImageDtoCopyWith<$Res>
    implements $CatImageDtoCopyWith<$Res> {
  factory _$$_CatImageDtoCopyWith(
          _$_CatImageDto value, $Res Function(_$_CatImageDto) then) =
      __$$_CatImageDtoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'url') String? img});
}

/// @nodoc
class __$$_CatImageDtoCopyWithImpl<$Res> extends _$CatImageDtoCopyWithImpl<$Res>
    implements _$$_CatImageDtoCopyWith<$Res> {
  __$$_CatImageDtoCopyWithImpl(
      _$_CatImageDto _value, $Res Function(_$_CatImageDto) _then)
      : super(_value, (v) => _then(v as _$_CatImageDto));

  @override
  _$_CatImageDto get _value => super._value as _$_CatImageDto;

  @override
  $Res call({
    Object? img = freezed,
  }) {
    return _then(_$_CatImageDto(
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_CatImageDto extends _CatImageDto {
  const _$_CatImageDto({@JsonKey(name: 'url') this.img}) : super._();

  factory _$_CatImageDto.fromJson(Map<String, dynamic> json) =>
      _$$_CatImageDtoFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String? img;

  @override
  String toString() {
    return 'CatImageDto(img: $img)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatImageDto &&
            const DeepCollectionEquality().equals(other.img, img));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(img));

  @JsonKey(ignore: true)
  @override
  _$$_CatImageDtoCopyWith<_$_CatImageDto> get copyWith =>
      __$$_CatImageDtoCopyWithImpl<_$_CatImageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatImageDtoToJson(
      this,
    );
  }
}

abstract class _CatImageDto extends CatImageDto {
  const factory _CatImageDto({@JsonKey(name: 'url') final String? img}) =
      _$_CatImageDto;
  const _CatImageDto._() : super._();

  factory _CatImageDto.fromJson(Map<String, dynamic> json) =
      _$_CatImageDto.fromJson;

  @override
  @JsonKey(name: 'url')
  String? get img;
  @override
  @JsonKey(ignore: true)
  _$$_CatImageDtoCopyWith<_$_CatImageDto> get copyWith =>
      throw _privateConstructorUsedError;
}
