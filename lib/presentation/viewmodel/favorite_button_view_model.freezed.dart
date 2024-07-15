// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_button_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoriteButtonState {
  bool get isFavorite => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteButtonStateCopyWith<FavoriteButtonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteButtonStateCopyWith<$Res> {
  factory $FavoriteButtonStateCopyWith(
          FavoriteButtonState value, $Res Function(FavoriteButtonState) then) =
      _$FavoriteButtonStateCopyWithImpl<$Res, FavoriteButtonState>;
  @useResult
  $Res call({bool isFavorite});
}

/// @nodoc
class _$FavoriteButtonStateCopyWithImpl<$Res, $Val extends FavoriteButtonState>
    implements $FavoriteButtonStateCopyWith<$Res> {
  _$FavoriteButtonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavorite = null,
  }) {
    return _then(_value.copyWith(
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteButtonStateImplCopyWith<$Res>
    implements $FavoriteButtonStateCopyWith<$Res> {
  factory _$$FavoriteButtonStateImplCopyWith(_$FavoriteButtonStateImpl value,
          $Res Function(_$FavoriteButtonStateImpl) then) =
      __$$FavoriteButtonStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isFavorite});
}

/// @nodoc
class __$$FavoriteButtonStateImplCopyWithImpl<$Res>
    extends _$FavoriteButtonStateCopyWithImpl<$Res, _$FavoriteButtonStateImpl>
    implements _$$FavoriteButtonStateImplCopyWith<$Res> {
  __$$FavoriteButtonStateImplCopyWithImpl(_$FavoriteButtonStateImpl _value,
      $Res Function(_$FavoriteButtonStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavorite = null,
  }) {
    return _then(_$FavoriteButtonStateImpl(
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FavoriteButtonStateImpl implements _FavoriteButtonState {
  _$FavoriteButtonStateImpl({required this.isFavorite});

  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'FavoriteButtonState(isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteButtonStateImpl &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteButtonStateImplCopyWith<_$FavoriteButtonStateImpl> get copyWith =>
      __$$FavoriteButtonStateImplCopyWithImpl<_$FavoriteButtonStateImpl>(
          this, _$identity);
}

abstract class _FavoriteButtonState implements FavoriteButtonState {
  factory _FavoriteButtonState({required final bool isFavorite}) =
      _$FavoriteButtonStateImpl;

  @override
  bool get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteButtonStateImplCopyWith<_$FavoriteButtonStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
