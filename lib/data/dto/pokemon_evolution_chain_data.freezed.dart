// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_evolution_chain_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonEvolutionChainData _$PokemonEvolutionChainDataFromJson(
    Map<String, dynamic> json) {
  return _PokemonEvolutionChainData.fromJson(json);
}

/// @nodoc
mixin _$PokemonEvolutionChainData {
  ChainData get chain => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonEvolutionChainDataCopyWith<PokemonEvolutionChainData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonEvolutionChainDataCopyWith<$Res> {
  factory $PokemonEvolutionChainDataCopyWith(PokemonEvolutionChainData value,
          $Res Function(PokemonEvolutionChainData) then) =
      _$PokemonEvolutionChainDataCopyWithImpl<$Res, PokemonEvolutionChainData>;
  @useResult
  $Res call({ChainData chain});

  $ChainDataCopyWith<$Res> get chain;
}

/// @nodoc
class _$PokemonEvolutionChainDataCopyWithImpl<$Res,
        $Val extends PokemonEvolutionChainData>
    implements $PokemonEvolutionChainDataCopyWith<$Res> {
  _$PokemonEvolutionChainDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chain = null,
  }) {
    return _then(_value.copyWith(
      chain: null == chain
          ? _value.chain
          : chain // ignore: cast_nullable_to_non_nullable
              as ChainData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChainDataCopyWith<$Res> get chain {
    return $ChainDataCopyWith<$Res>(_value.chain, (value) {
      return _then(_value.copyWith(chain: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonEvolutionChainDataImplCopyWith<$Res>
    implements $PokemonEvolutionChainDataCopyWith<$Res> {
  factory _$$PokemonEvolutionChainDataImplCopyWith(
          _$PokemonEvolutionChainDataImpl value,
          $Res Function(_$PokemonEvolutionChainDataImpl) then) =
      __$$PokemonEvolutionChainDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChainData chain});

  @override
  $ChainDataCopyWith<$Res> get chain;
}

/// @nodoc
class __$$PokemonEvolutionChainDataImplCopyWithImpl<$Res>
    extends _$PokemonEvolutionChainDataCopyWithImpl<$Res,
        _$PokemonEvolutionChainDataImpl>
    implements _$$PokemonEvolutionChainDataImplCopyWith<$Res> {
  __$$PokemonEvolutionChainDataImplCopyWithImpl(
      _$PokemonEvolutionChainDataImpl _value,
      $Res Function(_$PokemonEvolutionChainDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chain = null,
  }) {
    return _then(_$PokemonEvolutionChainDataImpl(
      chain: null == chain
          ? _value.chain
          : chain // ignore: cast_nullable_to_non_nullable
              as ChainData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonEvolutionChainDataImpl implements _PokemonEvolutionChainData {
  const _$PokemonEvolutionChainDataImpl({required this.chain});

  factory _$PokemonEvolutionChainDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonEvolutionChainDataImplFromJson(json);

  @override
  final ChainData chain;

  @override
  String toString() {
    return 'PokemonEvolutionChainData(chain: $chain)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonEvolutionChainDataImpl &&
            (identical(other.chain, chain) || other.chain == chain));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, chain);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonEvolutionChainDataImplCopyWith<_$PokemonEvolutionChainDataImpl>
      get copyWith => __$$PokemonEvolutionChainDataImplCopyWithImpl<
          _$PokemonEvolutionChainDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonEvolutionChainDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonEvolutionChainData implements PokemonEvolutionChainData {
  const factory _PokemonEvolutionChainData({required final ChainData chain}) =
      _$PokemonEvolutionChainDataImpl;

  factory _PokemonEvolutionChainData.fromJson(Map<String, dynamic> json) =
      _$PokemonEvolutionChainDataImpl.fromJson;

  @override
  ChainData get chain;
  @override
  @JsonKey(ignore: true)
  _$$PokemonEvolutionChainDataImplCopyWith<_$PokemonEvolutionChainDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ChainData _$ChainDataFromJson(Map<String, dynamic> json) {
  return _ChainData.fromJson(json);
}

/// @nodoc
mixin _$ChainData {
  @JsonKey(name: 'evolves_to')
  List<ChainData> get evolvesTo => throw _privateConstructorUsedError;
  NameUrlData get species => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChainDataCopyWith<ChainData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChainDataCopyWith<$Res> {
  factory $ChainDataCopyWith(ChainData value, $Res Function(ChainData) then) =
      _$ChainDataCopyWithImpl<$Res, ChainData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'evolves_to') List<ChainData> evolvesTo,
      NameUrlData species});

  $NameUrlDataCopyWith<$Res> get species;
}

/// @nodoc
class _$ChainDataCopyWithImpl<$Res, $Val extends ChainData>
    implements $ChainDataCopyWith<$Res> {
  _$ChainDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evolvesTo = null,
    Object? species = null,
  }) {
    return _then(_value.copyWith(
      evolvesTo: null == evolvesTo
          ? _value.evolvesTo
          : evolvesTo // ignore: cast_nullable_to_non_nullable
              as List<ChainData>,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as NameUrlData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameUrlDataCopyWith<$Res> get species {
    return $NameUrlDataCopyWith<$Res>(_value.species, (value) {
      return _then(_value.copyWith(species: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChainDataImplCopyWith<$Res>
    implements $ChainDataCopyWith<$Res> {
  factory _$$ChainDataImplCopyWith(
          _$ChainDataImpl value, $Res Function(_$ChainDataImpl) then) =
      __$$ChainDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'evolves_to') List<ChainData> evolvesTo,
      NameUrlData species});

  @override
  $NameUrlDataCopyWith<$Res> get species;
}

/// @nodoc
class __$$ChainDataImplCopyWithImpl<$Res>
    extends _$ChainDataCopyWithImpl<$Res, _$ChainDataImpl>
    implements _$$ChainDataImplCopyWith<$Res> {
  __$$ChainDataImplCopyWithImpl(
      _$ChainDataImpl _value, $Res Function(_$ChainDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evolvesTo = null,
    Object? species = null,
  }) {
    return _then(_$ChainDataImpl(
      evolvesTo: null == evolvesTo
          ? _value._evolvesTo
          : evolvesTo // ignore: cast_nullable_to_non_nullable
              as List<ChainData>,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as NameUrlData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChainDataImpl implements _ChainData {
  const _$ChainDataImpl(
      {@JsonKey(name: 'evolves_to') required final List<ChainData> evolvesTo,
      required this.species})
      : _evolvesTo = evolvesTo;

  factory _$ChainDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChainDataImplFromJson(json);

  final List<ChainData> _evolvesTo;
  @override
  @JsonKey(name: 'evolves_to')
  List<ChainData> get evolvesTo {
    if (_evolvesTo is EqualUnmodifiableListView) return _evolvesTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_evolvesTo);
  }

  @override
  final NameUrlData species;

  @override
  String toString() {
    return 'ChainData(evolvesTo: $evolvesTo, species: $species)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChainDataImpl &&
            const DeepCollectionEquality()
                .equals(other._evolvesTo, _evolvesTo) &&
            (identical(other.species, species) || other.species == species));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_evolvesTo), species);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChainDataImplCopyWith<_$ChainDataImpl> get copyWith =>
      __$$ChainDataImplCopyWithImpl<_$ChainDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChainDataImplToJson(
      this,
    );
  }
}

abstract class _ChainData implements ChainData {
  const factory _ChainData(
      {@JsonKey(name: 'evolves_to') required final List<ChainData> evolvesTo,
      required final NameUrlData species}) = _$ChainDataImpl;

  factory _ChainData.fromJson(Map<String, dynamic> json) =
      _$ChainDataImpl.fromJson;

  @override
  @JsonKey(name: 'evolves_to')
  List<ChainData> get evolvesTo;
  @override
  NameUrlData get species;
  @override
  @JsonKey(ignore: true)
  _$$ChainDataImplCopyWith<_$ChainDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
