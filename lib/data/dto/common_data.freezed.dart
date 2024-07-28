// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NameUrlData _$NameUrlDataFromJson(Map<String, dynamic> json) {
  return _NameUrlData.fromJson(json);
}

/// @nodoc
mixin _$NameUrlData {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameUrlDataCopyWith<NameUrlData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameUrlDataCopyWith<$Res> {
  factory $NameUrlDataCopyWith(
          NameUrlData value, $Res Function(NameUrlData) then) =
      _$NameUrlDataCopyWithImpl<$Res, NameUrlData>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$NameUrlDataCopyWithImpl<$Res, $Val extends NameUrlData>
    implements $NameUrlDataCopyWith<$Res> {
  _$NameUrlDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NameUrlDataImplCopyWith<$Res>
    implements $NameUrlDataCopyWith<$Res> {
  factory _$$NameUrlDataImplCopyWith(
          _$NameUrlDataImpl value, $Res Function(_$NameUrlDataImpl) then) =
      __$$NameUrlDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$NameUrlDataImplCopyWithImpl<$Res>
    extends _$NameUrlDataCopyWithImpl<$Res, _$NameUrlDataImpl>
    implements _$$NameUrlDataImplCopyWith<$Res> {
  __$$NameUrlDataImplCopyWithImpl(
      _$NameUrlDataImpl _value, $Res Function(_$NameUrlDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$NameUrlDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NameUrlDataImpl implements _NameUrlData {
  const _$NameUrlDataImpl({required this.name, required this.url});

  factory _$NameUrlDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NameUrlDataImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'NameUrlData(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameUrlDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameUrlDataImplCopyWith<_$NameUrlDataImpl> get copyWith =>
      __$$NameUrlDataImplCopyWithImpl<_$NameUrlDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NameUrlDataImplToJson(
      this,
    );
  }
}

abstract class _NameUrlData implements NameUrlData {
  const factory _NameUrlData(
      {required final String name,
      required final String url}) = _$NameUrlDataImpl;

  factory _NameUrlData.fromJson(Map<String, dynamic> json) =
      _$NameUrlDataImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$NameUrlDataImplCopyWith<_$NameUrlDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UrlData _$UrlDataFromJson(Map<String, dynamic> json) {
  return _UrlData.fromJson(json);
}

/// @nodoc
mixin _$UrlData {
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UrlDataCopyWith<UrlData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlDataCopyWith<$Res> {
  factory $UrlDataCopyWith(UrlData value, $Res Function(UrlData) then) =
      _$UrlDataCopyWithImpl<$Res, UrlData>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$UrlDataCopyWithImpl<$Res, $Val extends UrlData>
    implements $UrlDataCopyWith<$Res> {
  _$UrlDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UrlDataImplCopyWith<$Res> implements $UrlDataCopyWith<$Res> {
  factory _$$UrlDataImplCopyWith(
          _$UrlDataImpl value, $Res Function(_$UrlDataImpl) then) =
      __$$UrlDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$UrlDataImplCopyWithImpl<$Res>
    extends _$UrlDataCopyWithImpl<$Res, _$UrlDataImpl>
    implements _$$UrlDataImplCopyWith<$Res> {
  __$$UrlDataImplCopyWithImpl(
      _$UrlDataImpl _value, $Res Function(_$UrlDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$UrlDataImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UrlDataImpl implements _UrlData {
  const _$UrlDataImpl({required this.url});

  factory _$UrlDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UrlDataImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'UrlData(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UrlDataImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UrlDataImplCopyWith<_$UrlDataImpl> get copyWith =>
      __$$UrlDataImplCopyWithImpl<_$UrlDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UrlDataImplToJson(
      this,
    );
  }
}

abstract class _UrlData implements UrlData {
  const factory _UrlData({required final String url}) = _$UrlDataImpl;

  factory _UrlData.fromJson(Map<String, dynamic> json) = _$UrlDataImpl.fromJson;

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$UrlDataImplCopyWith<_$UrlDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageUrlSetData _$ImageUrlSetDataFromJson(Map<String, dynamic> json) {
  return _ImageUrlSetData.fromJson(json);
}

/// @nodoc
mixin _$ImageUrlSetData {
  @JsonKey(name: 'front_default')
  String get frontDefault => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageUrlSetDataCopyWith<ImageUrlSetData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageUrlSetDataCopyWith<$Res> {
  factory $ImageUrlSetDataCopyWith(
          ImageUrlSetData value, $Res Function(ImageUrlSetData) then) =
      _$ImageUrlSetDataCopyWithImpl<$Res, ImageUrlSetData>;
  @useResult
  $Res call({@JsonKey(name: 'front_default') String frontDefault});
}

/// @nodoc
class _$ImageUrlSetDataCopyWithImpl<$Res, $Val extends ImageUrlSetData>
    implements $ImageUrlSetDataCopyWith<$Res> {
  _$ImageUrlSetDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
  }) {
    return _then(_value.copyWith(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageUrlSetDataImplCopyWith<$Res>
    implements $ImageUrlSetDataCopyWith<$Res> {
  factory _$$ImageUrlSetDataImplCopyWith(_$ImageUrlSetDataImpl value,
          $Res Function(_$ImageUrlSetDataImpl) then) =
      __$$ImageUrlSetDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'front_default') String frontDefault});
}

/// @nodoc
class __$$ImageUrlSetDataImplCopyWithImpl<$Res>
    extends _$ImageUrlSetDataCopyWithImpl<$Res, _$ImageUrlSetDataImpl>
    implements _$$ImageUrlSetDataImplCopyWith<$Res> {
  __$$ImageUrlSetDataImplCopyWithImpl(
      _$ImageUrlSetDataImpl _value, $Res Function(_$ImageUrlSetDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
  }) {
    return _then(_$ImageUrlSetDataImpl(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageUrlSetDataImpl implements _ImageUrlSetData {
  const _$ImageUrlSetDataImpl(
      {@JsonKey(name: 'front_default') required this.frontDefault});

  factory _$ImageUrlSetDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageUrlSetDataImplFromJson(json);

  @override
  @JsonKey(name: 'front_default')
  final String frontDefault;

  @override
  String toString() {
    return 'ImageUrlSetData(frontDefault: $frontDefault)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageUrlSetDataImpl &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageUrlSetDataImplCopyWith<_$ImageUrlSetDataImpl> get copyWith =>
      __$$ImageUrlSetDataImplCopyWithImpl<_$ImageUrlSetDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageUrlSetDataImplToJson(
      this,
    );
  }
}

abstract class _ImageUrlSetData implements ImageUrlSetData {
  const factory _ImageUrlSetData(
      {@JsonKey(name: 'front_default')
      required final String frontDefault}) = _$ImageUrlSetDataImpl;

  factory _ImageUrlSetData.fromJson(Map<String, dynamic> json) =
      _$ImageUrlSetDataImpl.fromJson;

  @override
  @JsonKey(name: 'front_default')
  String get frontDefault;
  @override
  @JsonKey(ignore: true)
  _$$ImageUrlSetDataImplCopyWith<_$ImageUrlSetDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
