// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokedex_id_range.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokedexIdRange {
  int get start => throw _privateConstructorUsedError;
  int get end => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokedexIdRangeCopyWith<PokedexIdRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokedexIdRangeCopyWith<$Res> {
  factory $PokedexIdRangeCopyWith(
          PokedexIdRange value, $Res Function(PokedexIdRange) then) =
      _$PokedexIdRangeCopyWithImpl<$Res, PokedexIdRange>;
  @useResult
  $Res call({int start, int end});
}

/// @nodoc
class _$PokedexIdRangeCopyWithImpl<$Res, $Val extends PokedexIdRange>
    implements $PokedexIdRangeCopyWith<$Res> {
  _$PokedexIdRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokedexIdRangeImplCopyWith<$Res>
    implements $PokedexIdRangeCopyWith<$Res> {
  factory _$$PokedexIdRangeImplCopyWith(_$PokedexIdRangeImpl value,
          $Res Function(_$PokedexIdRangeImpl) then) =
      __$$PokedexIdRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int start, int end});
}

/// @nodoc
class __$$PokedexIdRangeImplCopyWithImpl<$Res>
    extends _$PokedexIdRangeCopyWithImpl<$Res, _$PokedexIdRangeImpl>
    implements _$$PokedexIdRangeImplCopyWith<$Res> {
  __$$PokedexIdRangeImplCopyWithImpl(
      _$PokedexIdRangeImpl _value, $Res Function(_$PokedexIdRangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$PokedexIdRangeImpl(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PokedexIdRangeImpl implements _PokedexIdRange {
  const _$PokedexIdRangeImpl({required this.start, required this.end});

  @override
  final int start;
  @override
  final int end;

  @override
  String toString() {
    return 'PokedexIdRange(start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokedexIdRangeImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokedexIdRangeImplCopyWith<_$PokedexIdRangeImpl> get copyWith =>
      __$$PokedexIdRangeImplCopyWithImpl<_$PokedexIdRangeImpl>(
          this, _$identity);
}

abstract class _PokedexIdRange implements PokedexIdRange {
  const factory _PokedexIdRange(
      {required final int start,
      required final int end}) = _$PokedexIdRangeImpl;

  @override
  int get start;
  @override
  int get end;
  @override
  @JsonKey(ignore: true)
  _$$PokedexIdRangeImplCopyWith<_$PokedexIdRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
