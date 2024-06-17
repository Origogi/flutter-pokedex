// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_card_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonCardInfo {
  int get pokedexId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonCardInfoCopyWith<PokemonCardInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonCardInfoCopyWith<$Res> {
  factory $PokemonCardInfoCopyWith(
          PokemonCardInfo value, $Res Function(PokemonCardInfo) then) =
      _$PokemonCardInfoCopyWithImpl<$Res, PokemonCardInfo>;
  @useResult
  $Res call({int pokedexId, String name, String imageUrl});
}

/// @nodoc
class _$PokemonCardInfoCopyWithImpl<$Res, $Val extends PokemonCardInfo>
    implements $PokemonCardInfoCopyWith<$Res> {
  _$PokemonCardInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokedexId = null,
    Object? name = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      pokedexId: null == pokedexId
          ? _value.pokedexId
          : pokedexId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonCardInfoImplCopyWith<$Res>
    implements $PokemonCardInfoCopyWith<$Res> {
  factory _$$PokemonCardInfoImplCopyWith(_$PokemonCardInfoImpl value,
          $Res Function(_$PokemonCardInfoImpl) then) =
      __$$PokemonCardInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pokedexId, String name, String imageUrl});
}

/// @nodoc
class __$$PokemonCardInfoImplCopyWithImpl<$Res>
    extends _$PokemonCardInfoCopyWithImpl<$Res, _$PokemonCardInfoImpl>
    implements _$$PokemonCardInfoImplCopyWith<$Res> {
  __$$PokemonCardInfoImplCopyWithImpl(
      _$PokemonCardInfoImpl _value, $Res Function(_$PokemonCardInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokedexId = null,
    Object? name = null,
    Object? imageUrl = null,
  }) {
    return _then(_$PokemonCardInfoImpl(
      pokedexId: null == pokedexId
          ? _value.pokedexId
          : pokedexId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PokemonCardInfoImpl implements _PokemonCardInfo {
  const _$PokemonCardInfoImpl(
      {required this.pokedexId, required this.name, required this.imageUrl});

  @override
  final int pokedexId;
  @override
  final String name;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'PokemonCardInfo(pokedexId: $pokedexId, name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonCardInfoImpl &&
            (identical(other.pokedexId, pokedexId) ||
                other.pokedexId == pokedexId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pokedexId, name, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonCardInfoImplCopyWith<_$PokemonCardInfoImpl> get copyWith =>
      __$$PokemonCardInfoImplCopyWithImpl<_$PokemonCardInfoImpl>(
          this, _$identity);
}

abstract class _PokemonCardInfo implements PokemonCardInfo {
  const factory _PokemonCardInfo(
      {required final int pokedexId,
      required final String name,
      required final String imageUrl}) = _$PokemonCardInfoImpl;

  @override
  int get pokedexId;
  @override
  String get name;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$PokemonCardInfoImplCopyWith<_$PokemonCardInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
