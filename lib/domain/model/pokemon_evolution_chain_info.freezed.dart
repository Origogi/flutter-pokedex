// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_evolution_chain_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonEvolutionChainInfo {
  PokemonCardInfo get cardInfo => throw _privateConstructorUsedError;
  PokemonEvolutionChainInfo? get next => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonEvolutionChainInfoCopyWith<PokemonEvolutionChainInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonEvolutionChainInfoCopyWith<$Res> {
  factory $PokemonEvolutionChainInfoCopyWith(PokemonEvolutionChainInfo value,
          $Res Function(PokemonEvolutionChainInfo) then) =
      _$PokemonEvolutionChainInfoCopyWithImpl<$Res, PokemonEvolutionChainInfo>;
  @useResult
  $Res call({PokemonCardInfo cardInfo, PokemonEvolutionChainInfo? next});

  $PokemonCardInfoCopyWith<$Res> get cardInfo;
  $PokemonEvolutionChainInfoCopyWith<$Res>? get next;
}

/// @nodoc
class _$PokemonEvolutionChainInfoCopyWithImpl<$Res,
        $Val extends PokemonEvolutionChainInfo>
    implements $PokemonEvolutionChainInfoCopyWith<$Res> {
  _$PokemonEvolutionChainInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardInfo = null,
    Object? next = freezed,
  }) {
    return _then(_value.copyWith(
      cardInfo: null == cardInfo
          ? _value.cardInfo
          : cardInfo // ignore: cast_nullable_to_non_nullable
              as PokemonCardInfo,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as PokemonEvolutionChainInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonCardInfoCopyWith<$Res> get cardInfo {
    return $PokemonCardInfoCopyWith<$Res>(_value.cardInfo, (value) {
      return _then(_value.copyWith(cardInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonEvolutionChainInfoCopyWith<$Res>? get next {
    if (_value.next == null) {
      return null;
    }

    return $PokemonEvolutionChainInfoCopyWith<$Res>(_value.next!, (value) {
      return _then(_value.copyWith(next: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonEvolutionChainInfoImplCopyWith<$Res>
    implements $PokemonEvolutionChainInfoCopyWith<$Res> {
  factory _$$PokemonEvolutionChainInfoImplCopyWith(
          _$PokemonEvolutionChainInfoImpl value,
          $Res Function(_$PokemonEvolutionChainInfoImpl) then) =
      __$$PokemonEvolutionChainInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PokemonCardInfo cardInfo, PokemonEvolutionChainInfo? next});

  @override
  $PokemonCardInfoCopyWith<$Res> get cardInfo;
  @override
  $PokemonEvolutionChainInfoCopyWith<$Res>? get next;
}

/// @nodoc
class __$$PokemonEvolutionChainInfoImplCopyWithImpl<$Res>
    extends _$PokemonEvolutionChainInfoCopyWithImpl<$Res,
        _$PokemonEvolutionChainInfoImpl>
    implements _$$PokemonEvolutionChainInfoImplCopyWith<$Res> {
  __$$PokemonEvolutionChainInfoImplCopyWithImpl(
      _$PokemonEvolutionChainInfoImpl _value,
      $Res Function(_$PokemonEvolutionChainInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardInfo = null,
    Object? next = freezed,
  }) {
    return _then(_$PokemonEvolutionChainInfoImpl(
      cardInfo: null == cardInfo
          ? _value.cardInfo
          : cardInfo // ignore: cast_nullable_to_non_nullable
              as PokemonCardInfo,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as PokemonEvolutionChainInfo?,
    ));
  }
}

/// @nodoc

class _$PokemonEvolutionChainInfoImpl implements _PokemonEvolutionChainInfo {
  const _$PokemonEvolutionChainInfoImpl({required this.cardInfo, this.next});

  @override
  final PokemonCardInfo cardInfo;
  @override
  final PokemonEvolutionChainInfo? next;

  @override
  String toString() {
    return 'PokemonEvolutionChainInfo(cardInfo: $cardInfo, next: $next)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonEvolutionChainInfoImpl &&
            (identical(other.cardInfo, cardInfo) ||
                other.cardInfo == cardInfo) &&
            (identical(other.next, next) || other.next == next));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardInfo, next);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonEvolutionChainInfoImplCopyWith<_$PokemonEvolutionChainInfoImpl>
      get copyWith => __$$PokemonEvolutionChainInfoImplCopyWithImpl<
          _$PokemonEvolutionChainInfoImpl>(this, _$identity);
}

abstract class _PokemonEvolutionChainInfo implements PokemonEvolutionChainInfo {
  const factory _PokemonEvolutionChainInfo(
      {required final PokemonCardInfo cardInfo,
      final PokemonEvolutionChainInfo? next}) = _$PokemonEvolutionChainInfoImpl;

  @override
  PokemonCardInfo get cardInfo;
  @override
  PokemonEvolutionChainInfo? get next;
  @override
  @JsonKey(ignore: true)
  _$$PokemonEvolutionChainInfoImplCopyWith<_$PokemonEvolutionChainInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
