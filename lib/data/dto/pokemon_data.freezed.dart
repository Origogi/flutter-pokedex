// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonData _$PokemonDataFromJson(Map<String, dynamic> json) {
  return _PokemonData.fromJson(json);
}

/// @nodoc
mixin _$PokemonData {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  List<PokemonTypeData> get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonDataCopyWith<PokemonData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDataCopyWith<$Res> {
  factory $PokemonDataCopyWith(
          PokemonData value, $Res Function(PokemonData) then) =
      _$PokemonDataCopyWithImpl<$Res, PokemonData>;
  @useResult
  $Res call(
      {int id,
      String name,
      double height,
      double weight,
      List<PokemonTypeData> types});
}

/// @nodoc
class _$PokemonDataCopyWithImpl<$Res, $Val extends PokemonData>
    implements $PokemonDataCopyWith<$Res> {
  _$PokemonDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? types = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonDataImplCopyWith<$Res>
    implements $PokemonDataCopyWith<$Res> {
  factory _$$PokemonDataImplCopyWith(
          _$PokemonDataImpl value, $Res Function(_$PokemonDataImpl) then) =
      __$$PokemonDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      double height,
      double weight,
      List<PokemonTypeData> types});
}

/// @nodoc
class __$$PokemonDataImplCopyWithImpl<$Res>
    extends _$PokemonDataCopyWithImpl<$Res, _$PokemonDataImpl>
    implements _$$PokemonDataImplCopyWith<$Res> {
  __$$PokemonDataImplCopyWithImpl(
      _$PokemonDataImpl _value, $Res Function(_$PokemonDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? types = null,
  }) {
    return _then(_$PokemonDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonDataImpl implements _PokemonData {
  const _$PokemonDataImpl(
      {required this.id,
      required this.name,
      required this.height,
      required this.weight,
      required final List<PokemonTypeData> types})
      : _types = types;

  factory _$PokemonDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonDataImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final double height;
  @override
  final double weight;
  final List<PokemonTypeData> _types;
  @override
  List<PokemonTypeData> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  String toString() {
    return 'PokemonData(id: $id, name: $name, height: $height, weight: $weight, types: $types)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, height, weight,
      const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonDataImplCopyWith<_$PokemonDataImpl> get copyWith =>
      __$$PokemonDataImplCopyWithImpl<_$PokemonDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonData implements PokemonData {
  const factory _PokemonData(
      {required final int id,
      required final String name,
      required final double height,
      required final double weight,
      required final List<PokemonTypeData> types}) = _$PokemonDataImpl;

  factory _PokemonData.fromJson(Map<String, dynamic> json) =
      _$PokemonDataImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  double get height;
  @override
  double get weight;
  @override
  List<PokemonTypeData> get types;
  @override
  @JsonKey(ignore: true)
  _$$PokemonDataImplCopyWith<_$PokemonDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonTypeData _$PokemonTypeDataFromJson(Map<String, dynamic> json) {
  return _PokemonTypeData.fromJson(json);
}

/// @nodoc
mixin _$PokemonTypeData {
  int get slot => throw _privateConstructorUsedError;
  NameUrlData get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonTypeDataCopyWith<PokemonTypeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeDataCopyWith<$Res> {
  factory $PokemonTypeDataCopyWith(
          PokemonTypeData value, $Res Function(PokemonTypeData) then) =
      _$PokemonTypeDataCopyWithImpl<$Res, PokemonTypeData>;
  @useResult
  $Res call({int slot, NameUrlData type});

  $NameUrlDataCopyWith<$Res> get type;
}

/// @nodoc
class _$PokemonTypeDataCopyWithImpl<$Res, $Val extends PokemonTypeData>
    implements $PokemonTypeDataCopyWith<$Res> {
  _$PokemonTypeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NameUrlData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameUrlDataCopyWith<$Res> get type {
    return $NameUrlDataCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonTypeDataImplCopyWith<$Res>
    implements $PokemonTypeDataCopyWith<$Res> {
  factory _$$PokemonTypeDataImplCopyWith(_$PokemonTypeDataImpl value,
          $Res Function(_$PokemonTypeDataImpl) then) =
      __$$PokemonTypeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int slot, NameUrlData type});

  @override
  $NameUrlDataCopyWith<$Res> get type;
}

/// @nodoc
class __$$PokemonTypeDataImplCopyWithImpl<$Res>
    extends _$PokemonTypeDataCopyWithImpl<$Res, _$PokemonTypeDataImpl>
    implements _$$PokemonTypeDataImplCopyWith<$Res> {
  __$$PokemonTypeDataImplCopyWithImpl(
      _$PokemonTypeDataImpl _value, $Res Function(_$PokemonTypeDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_$PokemonTypeDataImpl(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NameUrlData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonTypeDataImpl implements _PokemonTypeData {
  const _$PokemonTypeDataImpl({required this.slot, required this.type});

  factory _$PokemonTypeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonTypeDataImplFromJson(json);

  @override
  final int slot;
  @override
  final NameUrlData type;

  @override
  String toString() {
    return 'PokemonTypeData(slot: $slot, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonTypeDataImpl &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, slot, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonTypeDataImplCopyWith<_$PokemonTypeDataImpl> get copyWith =>
      __$$PokemonTypeDataImplCopyWithImpl<_$PokemonTypeDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonTypeDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonTypeData implements PokemonTypeData {
  const factory _PokemonTypeData(
      {required final int slot,
      required final NameUrlData type}) = _$PokemonTypeDataImpl;

  factory _PokemonTypeData.fromJson(Map<String, dynamic> json) =
      _$PokemonTypeDataImpl.fromJson;

  @override
  int get slot;
  @override
  NameUrlData get type;
  @override
  @JsonKey(ignore: true)
  _$$PokemonTypeDataImplCopyWith<_$PokemonTypeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
