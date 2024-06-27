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
  SpritesData get sprites => throw _privateConstructorUsedError;

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
      List<PokemonTypeData> types,
      SpritesData sprites});

  $SpritesDataCopyWith<$Res> get sprites;
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
    Object? sprites = null,
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
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as SpritesData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpritesDataCopyWith<$Res> get sprites {
    return $SpritesDataCopyWith<$Res>(_value.sprites, (value) {
      return _then(_value.copyWith(sprites: value) as $Val);
    });
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
      List<PokemonTypeData> types,
      SpritesData sprites});

  @override
  $SpritesDataCopyWith<$Res> get sprites;
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
    Object? sprites = null,
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
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as SpritesData,
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
      required final List<PokemonTypeData> types,
      required this.sprites})
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
  final SpritesData sprites;

  @override
  String toString() {
    return 'PokemonData(id: $id, name: $name, height: $height, weight: $weight, types: $types, sprites: $sprites)';
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
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.sprites, sprites) || other.sprites == sprites));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, height, weight,
      const DeepCollectionEquality().hash(_types), sprites);

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
      required final List<PokemonTypeData> types,
      required final SpritesData sprites}) = _$PokemonDataImpl;

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
  SpritesData get sprites;
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

SpritesData _$SpritesDataFromJson(Map<String, dynamic> json) {
  return _SpritesData.fromJson(json);
}

/// @nodoc
mixin _$SpritesData {
  @JsonKey(name: 'front_default')
  String get frontDefault => throw _privateConstructorUsedError;
  OtherData get other => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpritesDataCopyWith<SpritesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpritesDataCopyWith<$Res> {
  factory $SpritesDataCopyWith(
          SpritesData value, $Res Function(SpritesData) then) =
      _$SpritesDataCopyWithImpl<$Res, SpritesData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'front_default') String frontDefault, OtherData other});

  $OtherDataCopyWith<$Res> get other;
}

/// @nodoc
class _$SpritesDataCopyWithImpl<$Res, $Val extends SpritesData>
    implements $SpritesDataCopyWith<$Res> {
  _$SpritesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
    Object? other = null,
  }) {
    return _then(_value.copyWith(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      other: null == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as OtherData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OtherDataCopyWith<$Res> get other {
    return $OtherDataCopyWith<$Res>(_value.other, (value) {
      return _then(_value.copyWith(other: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpritesDataImplCopyWith<$Res>
    implements $SpritesDataCopyWith<$Res> {
  factory _$$SpritesDataImplCopyWith(
          _$SpritesDataImpl value, $Res Function(_$SpritesDataImpl) then) =
      __$$SpritesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'front_default') String frontDefault, OtherData other});

  @override
  $OtherDataCopyWith<$Res> get other;
}

/// @nodoc
class __$$SpritesDataImplCopyWithImpl<$Res>
    extends _$SpritesDataCopyWithImpl<$Res, _$SpritesDataImpl>
    implements _$$SpritesDataImplCopyWith<$Res> {
  __$$SpritesDataImplCopyWithImpl(
      _$SpritesDataImpl _value, $Res Function(_$SpritesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
    Object? other = null,
  }) {
    return _then(_$SpritesDataImpl(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      other: null == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as OtherData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpritesDataImpl implements _SpritesData {
  const _$SpritesDataImpl(
      {@JsonKey(name: 'front_default') required this.frontDefault,
      required this.other});

  factory _$SpritesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpritesDataImplFromJson(json);

  @override
  @JsonKey(name: 'front_default')
  final String frontDefault;
  @override
  final OtherData other;

  @override
  String toString() {
    return 'SpritesData(frontDefault: $frontDefault, other: $other)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpritesDataImpl &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault) &&
            (identical(other.other, this.other) || other.other == this.other));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault, other);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpritesDataImplCopyWith<_$SpritesDataImpl> get copyWith =>
      __$$SpritesDataImplCopyWithImpl<_$SpritesDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpritesDataImplToJson(
      this,
    );
  }
}

abstract class _SpritesData implements SpritesData {
  const factory _SpritesData(
      {@JsonKey(name: 'front_default') required final String frontDefault,
      required final OtherData other}) = _$SpritesDataImpl;

  factory _SpritesData.fromJson(Map<String, dynamic> json) =
      _$SpritesDataImpl.fromJson;

  @override
  @JsonKey(name: 'front_default')
  String get frontDefault;
  @override
  OtherData get other;
  @override
  @JsonKey(ignore: true)
  _$$SpritesDataImplCopyWith<_$SpritesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OtherData _$OtherDataFromJson(Map<String, dynamic> json) {
  return _OtherData.fromJson(json);
}

/// @nodoc
mixin _$OtherData {
  ImageUrlSetData get showdown => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtherDataCopyWith<OtherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherDataCopyWith<$Res> {
  factory $OtherDataCopyWith(OtherData value, $Res Function(OtherData) then) =
      _$OtherDataCopyWithImpl<$Res, OtherData>;
  @useResult
  $Res call({ImageUrlSetData showdown});

  $ImageUrlSetDataCopyWith<$Res> get showdown;
}

/// @nodoc
class _$OtherDataCopyWithImpl<$Res, $Val extends OtherData>
    implements $OtherDataCopyWith<$Res> {
  _$OtherDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showdown = null,
  }) {
    return _then(_value.copyWith(
      showdown: null == showdown
          ? _value.showdown
          : showdown // ignore: cast_nullable_to_non_nullable
              as ImageUrlSetData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageUrlSetDataCopyWith<$Res> get showdown {
    return $ImageUrlSetDataCopyWith<$Res>(_value.showdown, (value) {
      return _then(_value.copyWith(showdown: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OtherDataImplCopyWith<$Res>
    implements $OtherDataCopyWith<$Res> {
  factory _$$OtherDataImplCopyWith(
          _$OtherDataImpl value, $Res Function(_$OtherDataImpl) then) =
      __$$OtherDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ImageUrlSetData showdown});

  @override
  $ImageUrlSetDataCopyWith<$Res> get showdown;
}

/// @nodoc
class __$$OtherDataImplCopyWithImpl<$Res>
    extends _$OtherDataCopyWithImpl<$Res, _$OtherDataImpl>
    implements _$$OtherDataImplCopyWith<$Res> {
  __$$OtherDataImplCopyWithImpl(
      _$OtherDataImpl _value, $Res Function(_$OtherDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showdown = null,
  }) {
    return _then(_$OtherDataImpl(
      showdown: null == showdown
          ? _value.showdown
          : showdown // ignore: cast_nullable_to_non_nullable
              as ImageUrlSetData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtherDataImpl implements _OtherData {
  const _$OtherDataImpl({required this.showdown});

  factory _$OtherDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtherDataImplFromJson(json);

  @override
  final ImageUrlSetData showdown;

  @override
  String toString() {
    return 'OtherData(showdown: $showdown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherDataImpl &&
            (identical(other.showdown, showdown) ||
                other.showdown == showdown));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, showdown);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherDataImplCopyWith<_$OtherDataImpl> get copyWith =>
      __$$OtherDataImplCopyWithImpl<_$OtherDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtherDataImplToJson(
      this,
    );
  }
}

abstract class _OtherData implements OtherData {
  const factory _OtherData({required final ImageUrlSetData showdown}) =
      _$OtherDataImpl;

  factory _OtherData.fromJson(Map<String, dynamic> json) =
      _$OtherDataImpl.fromJson;

  @override
  ImageUrlSetData get showdown;
  @override
  @JsonKey(ignore: true)
  _$$OtherDataImplCopyWith<_$OtherDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
