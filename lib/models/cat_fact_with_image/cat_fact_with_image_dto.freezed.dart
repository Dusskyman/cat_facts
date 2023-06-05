// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cat_fact_with_image_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatFactWithImageDto _$CatFactWithImageDtoFromJson(Map<String, dynamic> json) {
  return _CatFactWithImageDto.fromJson(json);
}

/// @nodoc
mixin _$CatFactWithImageDto {
  @JsonKey(name: 'fact')
  String get fact => throw _privateConstructorUsedError;
  @JsonKey(name: 'img')
  String get img => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatFactWithImageDtoCopyWith<CatFactWithImageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatFactWithImageDtoCopyWith<$Res> {
  factory $CatFactWithImageDtoCopyWith(
          CatFactWithImageDto value, $Res Function(CatFactWithImageDto) then) =
      _$CatFactWithImageDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'fact') String fact, @JsonKey(name: 'img') String img});
}

/// @nodoc
class _$CatFactWithImageDtoCopyWithImpl<$Res>
    implements $CatFactWithImageDtoCopyWith<$Res> {
  _$CatFactWithImageDtoCopyWithImpl(this._value, this._then);

  final CatFactWithImageDto _value;
  // ignore: unused_field
  final $Res Function(CatFactWithImageDto) _then;

  @override
  $Res call({
    Object? fact = freezed,
    Object? img = freezed,
  }) {
    return _then(_value.copyWith(
      fact: fact == freezed
          ? _value.fact
          : fact // ignore: cast_nullable_to_non_nullable
              as String,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CatFactWithImageDtoCopyWith<$Res>
    implements $CatFactWithImageDtoCopyWith<$Res> {
  factory _$$_CatFactWithImageDtoCopyWith(_$_CatFactWithImageDto value,
          $Res Function(_$_CatFactWithImageDto) then) =
      __$$_CatFactWithImageDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'fact') String fact, @JsonKey(name: 'img') String img});
}

/// @nodoc
class __$$_CatFactWithImageDtoCopyWithImpl<$Res>
    extends _$CatFactWithImageDtoCopyWithImpl<$Res>
    implements _$$_CatFactWithImageDtoCopyWith<$Res> {
  __$$_CatFactWithImageDtoCopyWithImpl(_$_CatFactWithImageDto _value,
      $Res Function(_$_CatFactWithImageDto) _then)
      : super(_value, (v) => _then(v as _$_CatFactWithImageDto));

  @override
  _$_CatFactWithImageDto get _value => super._value as _$_CatFactWithImageDto;

  @override
  $Res call({
    Object? fact = freezed,
    Object? img = freezed,
  }) {
    return _then(_$_CatFactWithImageDto(
      fact: fact == freezed
          ? _value.fact
          : fact // ignore: cast_nullable_to_non_nullable
              as String,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_CatFactWithImageDto extends _CatFactWithImageDto {
  const _$_CatFactWithImageDto(
      {@JsonKey(name: 'fact') required this.fact,
      @JsonKey(name: 'img') required this.img})
      : super._();

  factory _$_CatFactWithImageDto.fromJson(Map<String, dynamic> json) =>
      _$$_CatFactWithImageDtoFromJson(json);

  @override
  @JsonKey(name: 'fact')
  final String fact;
  @override
  @JsonKey(name: 'img')
  final String img;

  @override
  String toString() {
    return 'CatFactWithImageDto(fact: $fact, img: $img)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatFactWithImageDto &&
            const DeepCollectionEquality().equals(other.fact, fact) &&
            const DeepCollectionEquality().equals(other.img, img));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fact),
      const DeepCollectionEquality().hash(img));

  @JsonKey(ignore: true)
  @override
  _$$_CatFactWithImageDtoCopyWith<_$_CatFactWithImageDto> get copyWith =>
      __$$_CatFactWithImageDtoCopyWithImpl<_$_CatFactWithImageDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatFactWithImageDtoToJson(
      this,
    );
  }
}

abstract class _CatFactWithImageDto extends CatFactWithImageDto {
  const factory _CatFactWithImageDto(
          {@JsonKey(name: 'fact') required final String fact,
          @JsonKey(name: 'img') required final String img}) =
      _$_CatFactWithImageDto;
  const _CatFactWithImageDto._() : super._();

  factory _CatFactWithImageDto.fromJson(Map<String, dynamic> json) =
      _$_CatFactWithImageDto.fromJson;

  @override
  @JsonKey(name: 'fact')
  String get fact;
  @override
  @JsonKey(name: 'img')
  String get img;
  @override
  @JsonKey(ignore: true)
  _$$_CatFactWithImageDtoCopyWith<_$_CatFactWithImageDto> get copyWith =>
      throw _privateConstructorUsedError;
}
