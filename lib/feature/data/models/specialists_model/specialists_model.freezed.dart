// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'specialists_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpecialistsModel _$SpecialistsModelFromJson(Map<String, dynamic> json) {
  return _SpecialistsModel.fromJson(json);
}

/// @nodoc
mixin _$SpecialistsModel {
  int get total => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  List<ResultModel?>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecialistsModelCopyWith<SpecialistsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialistsModelCopyWith<$Res> {
  factory $SpecialistsModelCopyWith(
          SpecialistsModel value, $Res Function(SpecialistsModel) then) =
      _$SpecialistsModelCopyWithImpl<$Res, SpecialistsModel>;
  @useResult
  $Res call({int total, int limit, int page, List<ResultModel?>? results});
}

/// @nodoc
class _$SpecialistsModelCopyWithImpl<$Res, $Val extends SpecialistsModel>
    implements $SpecialistsModelCopyWith<$Res> {
  _$SpecialistsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? limit = null,
    Object? page = null,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultModel?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpecialistsModelImplCopyWith<$Res>
    implements $SpecialistsModelCopyWith<$Res> {
  factory _$$SpecialistsModelImplCopyWith(_$SpecialistsModelImpl value,
          $Res Function(_$SpecialistsModelImpl) then) =
      __$$SpecialistsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int limit, int page, List<ResultModel?>? results});
}

/// @nodoc
class __$$SpecialistsModelImplCopyWithImpl<$Res>
    extends _$SpecialistsModelCopyWithImpl<$Res, _$SpecialistsModelImpl>
    implements _$$SpecialistsModelImplCopyWith<$Res> {
  __$$SpecialistsModelImplCopyWithImpl(_$SpecialistsModelImpl _value,
      $Res Function(_$SpecialistsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? limit = null,
    Object? page = null,
    Object? results = freezed,
  }) {
    return _then(_$SpecialistsModelImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultModel?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpecialistsModelImpl implements _SpecialistsModel {
  const _$SpecialistsModelImpl(
      {required this.total,
      required this.limit,
      required this.page,
      final List<ResultModel?>? results})
      : _results = results;

  factory _$SpecialistsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecialistsModelImplFromJson(json);

  @override
  final int total;
  @override
  final int limit;
  @override
  final int page;
  final List<ResultModel?>? _results;
  @override
  List<ResultModel?>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SpecialistsModel(total: $total, limit: $limit, page: $page, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialistsModelImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, limit, page,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialistsModelImplCopyWith<_$SpecialistsModelImpl> get copyWith =>
      __$$SpecialistsModelImplCopyWithImpl<_$SpecialistsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecialistsModelImplToJson(
      this,
    );
  }
}

abstract class _SpecialistsModel implements SpecialistsModel {
  const factory _SpecialistsModel(
      {required final int total,
      required final int limit,
      required final int page,
      final List<ResultModel?>? results}) = _$SpecialistsModelImpl;

  factory _SpecialistsModel.fromJson(Map<String, dynamic> json) =
      _$SpecialistsModelImpl.fromJson;

  @override
  int get total;
  @override
  int get limit;
  @override
  int get page;
  @override
  List<ResultModel?>? get results;
  @override
  @JsonKey(ignore: true)
  _$$SpecialistsModelImplCopyWith<_$SpecialistsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
