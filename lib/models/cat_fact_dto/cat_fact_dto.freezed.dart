// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cat_fact_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatFactDto _$CatFactDtoFromJson(Map<String, dynamic> json) {
  return _CatFactDto.fromJson(json);
}

/// @nodoc
mixin _$CatFactDto {
  @JsonKey(name: 'fact')
  String get fact => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatFactDtoCopyWith<CatFactDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatFactDtoCopyWith<$Res> {
  factory $CatFactDtoCopyWith(
          CatFactDto value, $Res Function(CatFactDto) then) =
      _$CatFactDtoCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'fact') String fact});
}

/// @nodoc
class _$CatFactDtoCopyWithImpl<$Res> implements $CatFactDtoCopyWith<$Res> {
  _$CatFactDtoCopyWithImpl(this._value, this._then);

  final CatFactDto _value;
  // ignore: unused_field
  final $Res Function(CatFactDto) _then;

  @override
  $Res call({
    Object? fact = freezed,
  }) {
    return _then(_value.copyWith(
      fact: fact == freezed
          ? _value.fact
          : fact // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CatFactDtoCopyWith<$Res>
    implements $CatFactDtoCopyWith<$Res> {
  factory _$$_CatFactDtoCopyWith(
          _$_CatFactDto value, $Res Function(_$_CatFactDto) then) =
      __$$_CatFactDtoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'fact') String fact});
}

/// @nodoc
class __$$_CatFactDtoCopyWithImpl<$Res> extends _$CatFactDtoCopyWithImpl<$Res>
    implements _$$_CatFactDtoCopyWith<$Res> {
  __$$_CatFactDtoCopyWithImpl(
      _$_CatFactDto _value, $Res Function(_$_CatFactDto) _then)
      : super(_value, (v) => _then(v as _$_CatFactDto));

  @override
  _$_CatFactDto get _value => super._value as _$_CatFactDto;

  @override
  $Res call({
    Object? fact = freezed,
  }) {
    return _then(_$_CatFactDto(
      fact: fact == freezed
          ? _value.fact
          : fact // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, checked: true, explicitToJson: true)
class _$_CatFactDto extends _CatFactDto {
  const _$_CatFactDto({@JsonKey(name: 'fact') required this.fact}) : super._();

  factory _$_CatFactDto.fromJson(Map<String, dynamic> json) =>
      _$$_CatFactDtoFromJson(json);

  @override
  @JsonKey(name: 'fact')
  final String fact;

  @override
  String toString() {
    return 'CatFactDto(fact: $fact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatFactDto &&
            const DeepCollectionEquality().equals(other.fact, fact));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(fact));

  @JsonKey(ignore: true)
  @override
  _$$_CatFactDtoCopyWith<_$_CatFactDto> get copyWith =>
      __$$_CatFactDtoCopyWithImpl<_$_CatFactDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatFactDtoToJson(
      this,
    );
  }
}

abstract class _CatFactDto extends CatFactDto {
  const factory _CatFactDto(
      {@JsonKey(name: 'fact') required final String fact}) = _$_CatFactDto;
  const _CatFactDto._() : super._();

  factory _CatFactDto.fromJson(Map<String, dynamic> json) =
      _$_CatFactDto.fromJson;

  @override
  @JsonKey(name: 'fact')
  String get fact;
  @override
  @JsonKey(ignore: true)
  _$$_CatFactDtoCopyWith<_$_CatFactDto> get copyWith =>
      throw _privateConstructorUsedError;
}
