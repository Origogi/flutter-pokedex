// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_detail_screen_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonDetailScreenViewModelState {
  PokemonDetailInfo? get pokemonDetailInfo =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonDetailScreenViewModelStateCopyWith<PokemonDetailScreenViewModelState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailScreenViewModelStateCopyWith<$Res> {
  factory $PokemonDetailScreenViewModelStateCopyWith(
          PokemonDetailScreenViewModelState value,
          $Res Function(PokemonDetailScreenViewModelState) then) =
      _$PokemonDetailScreenViewModelStateCopyWithImpl<$Res,
          PokemonDetailScreenViewModelState>;
  @useResult
  $Res call({PokemonDetailInfo? pokemonDetailInfo});

  $PokemonDetailInfoCopyWith<$Res>? get pokemonDetailInfo;
}

/// @nodoc
class _$PokemonDetailScreenViewModelStateCopyWithImpl<$Res,
        $Val extends PokemonDetailScreenViewModelState>
    implements $PokemonDetailScreenViewModelStateCopyWith<$Res> {
  _$PokemonDetailScreenViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonDetailInfo = freezed,
  }) {
    return _then(_value.copyWith(
      pokemonDetailInfo: freezed == pokemonDetailInfo
          ? _value.pokemonDetailInfo
          : pokemonDetailInfo // ignore: cast_nullable_to_non_nullable
              as PokemonDetailInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonDetailInfoCopyWith<$Res>? get pokemonDetailInfo {
    if (_value.pokemonDetailInfo == null) {
      return null;
    }

    return $PokemonDetailInfoCopyWith<$Res>(_value.pokemonDetailInfo!, (value) {
      return _then(_value.copyWith(pokemonDetailInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonDetailScreenViewModelStateImplCopyWith<$Res>
    implements $PokemonDetailScreenViewModelStateCopyWith<$Res> {
  factory _$$PokemonDetailScreenViewModelStateImplCopyWith(
          _$PokemonDetailScreenViewModelStateImpl value,
          $Res Function(_$PokemonDetailScreenViewModelStateImpl) then) =
      __$$PokemonDetailScreenViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PokemonDetailInfo? pokemonDetailInfo});

  @override
  $PokemonDetailInfoCopyWith<$Res>? get pokemonDetailInfo;
}

/// @nodoc
class __$$PokemonDetailScreenViewModelStateImplCopyWithImpl<$Res>
    extends _$PokemonDetailScreenViewModelStateCopyWithImpl<$Res,
        _$PokemonDetailScreenViewModelStateImpl>
    implements _$$PokemonDetailScreenViewModelStateImplCopyWith<$Res> {
  __$$PokemonDetailScreenViewModelStateImplCopyWithImpl(
      _$PokemonDetailScreenViewModelStateImpl _value,
      $Res Function(_$PokemonDetailScreenViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonDetailInfo = freezed,
  }) {
    return _then(_$PokemonDetailScreenViewModelStateImpl(
      pokemonDetailInfo: freezed == pokemonDetailInfo
          ? _value.pokemonDetailInfo
          : pokemonDetailInfo // ignore: cast_nullable_to_non_nullable
              as PokemonDetailInfo?,
    ));
  }
}

/// @nodoc

class _$PokemonDetailScreenViewModelStateImpl
    implements _PokemonDetailScreenViewModelState {
  _$PokemonDetailScreenViewModelStateImpl({this.pokemonDetailInfo});

  @override
  final PokemonDetailInfo? pokemonDetailInfo;

  @override
  String toString() {
    return 'PokemonDetailScreenViewModelState(pokemonDetailInfo: $pokemonDetailInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonDetailScreenViewModelStateImpl &&
            (identical(other.pokemonDetailInfo, pokemonDetailInfo) ||
                other.pokemonDetailInfo == pokemonDetailInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pokemonDetailInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonDetailScreenViewModelStateImplCopyWith<
          _$PokemonDetailScreenViewModelStateImpl>
      get copyWith => __$$PokemonDetailScreenViewModelStateImplCopyWithImpl<
          _$PokemonDetailScreenViewModelStateImpl>(this, _$identity);
}

abstract class _PokemonDetailScreenViewModelState
    implements PokemonDetailScreenViewModelState {
  factory _PokemonDetailScreenViewModelState(
          {final PokemonDetailInfo? pokemonDetailInfo}) =
      _$PokemonDetailScreenViewModelStateImpl;

  @override
  PokemonDetailInfo? get pokemonDetailInfo;
  @override
  @JsonKey(ignore: true)
  _$$PokemonDetailScreenViewModelStateImplCopyWith<
          _$PokemonDetailScreenViewModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
