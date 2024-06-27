// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonInfo {
  int get pokedexId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get animatedImageUrl => throw _privateConstructorUsedError;
  List<PokemonType> get types => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonInfoCopyWith<PokemonInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonInfoCopyWith<$Res> {
  factory $PokemonInfoCopyWith(
          PokemonInfo value, $Res Function(PokemonInfo) then) =
      _$PokemonInfoCopyWithImpl<$Res, PokemonInfo>;
  @useResult
  $Res call(
      {int pokedexId,
      String name,
      String imageUrl,
      String animatedImageUrl,
      List<PokemonType> types});
}

/// @nodoc
class _$PokemonInfoCopyWithImpl<$Res, $Val extends PokemonInfo>
    implements $PokemonInfoCopyWith<$Res> {
  _$PokemonInfoCopyWithImpl(this._value, this._then);

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
    Object? animatedImageUrl = null,
    Object? types = null,
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
      animatedImageUrl: null == animatedImageUrl
          ? _value.animatedImageUrl
          : animatedImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonType>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonInfoImplCopyWith<$Res>
    implements $PokemonInfoCopyWith<$Res> {
  factory _$$PokemonInfoImplCopyWith(
          _$PokemonInfoImpl value, $Res Function(_$PokemonInfoImpl) then) =
      __$$PokemonInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int pokedexId,
      String name,
      String imageUrl,
      String animatedImageUrl,
      List<PokemonType> types});
}

/// @nodoc
class __$$PokemonInfoImplCopyWithImpl<$Res>
    extends _$PokemonInfoCopyWithImpl<$Res, _$PokemonInfoImpl>
    implements _$$PokemonInfoImplCopyWith<$Res> {
  __$$PokemonInfoImplCopyWithImpl(
      _$PokemonInfoImpl _value, $Res Function(_$PokemonInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokedexId = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? animatedImageUrl = null,
    Object? types = null,
  }) {
    return _then(_$PokemonInfoImpl(
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
      animatedImageUrl: null == animatedImageUrl
          ? _value.animatedImageUrl
          : animatedImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonType>,
    ));
  }
}

/// @nodoc

class _$PokemonInfoImpl implements _PokemonInfo {
  _$PokemonInfoImpl(
      {required this.pokedexId,
      required this.name,
      required this.imageUrl,
      required this.animatedImageUrl,
      required final List<PokemonType> types})
      : _types = types;

  @override
  final int pokedexId;
  @override
  final String name;
  @override
  final String imageUrl;
  @override
  final String animatedImageUrl;
  final List<PokemonType> _types;
  @override
  List<PokemonType> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  String toString() {
    return 'PokemonInfo(pokedexId: $pokedexId, name: $name, imageUrl: $imageUrl, animatedImageUrl: $animatedImageUrl, types: $types)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonInfoImpl &&
            (identical(other.pokedexId, pokedexId) ||
                other.pokedexId == pokedexId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.animatedImageUrl, animatedImageUrl) ||
                other.animatedImageUrl == animatedImageUrl) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pokedexId, name, imageUrl,
      animatedImageUrl, const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonInfoImplCopyWith<_$PokemonInfoImpl> get copyWith =>
      __$$PokemonInfoImplCopyWithImpl<_$PokemonInfoImpl>(this, _$identity);
}

abstract class _PokemonInfo implements PokemonInfo {
  factory _PokemonInfo(
      {required final int pokedexId,
      required final String name,
      required final String imageUrl,
      required final String animatedImageUrl,
      required final List<PokemonType> types}) = _$PokemonInfoImpl;

  @override
  int get pokedexId;
  @override
  String get name;
  @override
  String get imageUrl;
  @override
  String get animatedImageUrl;
  @override
  List<PokemonType> get types;
  @override
  @JsonKey(ignore: true)
  _$$PokemonInfoImplCopyWith<_$PokemonInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
