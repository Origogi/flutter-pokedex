// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_list_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonListViewModelState {
  List<PokemonCardInfo> get list => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isEndOfList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonListViewModelStateCopyWith<PokemonListViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListViewModelStateCopyWith<$Res> {
  factory $PokemonListViewModelStateCopyWith(PokemonListViewModelState value,
          $Res Function(PokemonListViewModelState) then) =
      _$PokemonListViewModelStateCopyWithImpl<$Res, PokemonListViewModelState>;
  @useResult
  $Res call({List<PokemonCardInfo> list, bool isLoading, bool isEndOfList});
}

/// @nodoc
class _$PokemonListViewModelStateCopyWithImpl<$Res,
        $Val extends PokemonListViewModelState>
    implements $PokemonListViewModelStateCopyWith<$Res> {
  _$PokemonListViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? isLoading = null,
    Object? isEndOfList = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<PokemonCardInfo>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isEndOfList: null == isEndOfList
          ? _value.isEndOfList
          : isEndOfList // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonListViewModelStateImplCopyWith<$Res>
    implements $PokemonListViewModelStateCopyWith<$Res> {
  factory _$$PokemonListViewModelStateImplCopyWith(
          _$PokemonListViewModelStateImpl value,
          $Res Function(_$PokemonListViewModelStateImpl) then) =
      __$$PokemonListViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PokemonCardInfo> list, bool isLoading, bool isEndOfList});
}

/// @nodoc
class __$$PokemonListViewModelStateImplCopyWithImpl<$Res>
    extends _$PokemonListViewModelStateCopyWithImpl<$Res,
        _$PokemonListViewModelStateImpl>
    implements _$$PokemonListViewModelStateImplCopyWith<$Res> {
  __$$PokemonListViewModelStateImplCopyWithImpl(
      _$PokemonListViewModelStateImpl _value,
      $Res Function(_$PokemonListViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? isLoading = null,
    Object? isEndOfList = null,
  }) {
    return _then(_$PokemonListViewModelStateImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<PokemonCardInfo>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isEndOfList: null == isEndOfList
          ? _value.isEndOfList
          : isEndOfList // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PokemonListViewModelStateImpl implements _PokemonListViewModelState {
  _$PokemonListViewModelStateImpl(
      {required final List<PokemonCardInfo> list,
      required this.isLoading,
      required this.isEndOfList})
      : _list = list;

  final List<PokemonCardInfo> _list;
  @override
  List<PokemonCardInfo> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final bool isLoading;
  @override
  final bool isEndOfList;

  @override
  String toString() {
    return 'PokemonListViewModelState(list: $list, isLoading: $isLoading, isEndOfList: $isEndOfList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonListViewModelStateImpl &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isEndOfList, isEndOfList) ||
                other.isEndOfList == isEndOfList));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_list), isLoading, isEndOfList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonListViewModelStateImplCopyWith<_$PokemonListViewModelStateImpl>
      get copyWith => __$$PokemonListViewModelStateImplCopyWithImpl<
          _$PokemonListViewModelStateImpl>(this, _$identity);
}

abstract class _PokemonListViewModelState implements PokemonListViewModelState {
  factory _PokemonListViewModelState(
      {required final List<PokemonCardInfo> list,
      required final bool isLoading,
      required final bool isEndOfList}) = _$PokemonListViewModelStateImpl;

  @override
  List<PokemonCardInfo> get list;
  @override
  bool get isLoading;
  @override
  bool get isEndOfList;
  @override
  @JsonKey(ignore: true)
  _$$PokemonListViewModelStateImplCopyWith<_$PokemonListViewModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
