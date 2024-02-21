// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_exp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkExperiancesModel _$WorkExperiancesModelFromJson(Map<String, dynamic> json) {
  return _WorkExperiancesModel.fromJson(json);
}

/// @nodoc
mixin _$WorkExperiancesModel {
  String? get description => throw _privateConstructorUsedError;
  String? get from => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkExperiancesModelCopyWith<WorkExperiancesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkExperiancesModelCopyWith<$Res> {
  factory $WorkExperiancesModelCopyWith(WorkExperiancesModel value,
          $Res Function(WorkExperiancesModel) then) =
      _$WorkExperiancesModelCopyWithImpl<$Res, WorkExperiancesModel>;
  @useResult
  $Res call(
      {String? description,
      String? from,
      String? id,
      String? name,
      String? to});
}

/// @nodoc
class _$WorkExperiancesModelCopyWithImpl<$Res,
        $Val extends WorkExperiancesModel>
    implements $WorkExperiancesModelCopyWith<$Res> {
  _$WorkExperiancesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? from = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkExperiancesModelImplCopyWith<$Res>
    implements $WorkExperiancesModelCopyWith<$Res> {
  factory _$$WorkExperiancesModelImplCopyWith(_$WorkExperiancesModelImpl value,
          $Res Function(_$WorkExperiancesModelImpl) then) =
      __$$WorkExperiancesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? description,
      String? from,
      String? id,
      String? name,
      String? to});
}

/// @nodoc
class __$$WorkExperiancesModelImplCopyWithImpl<$Res>
    extends _$WorkExperiancesModelCopyWithImpl<$Res, _$WorkExperiancesModelImpl>
    implements _$$WorkExperiancesModelImplCopyWith<$Res> {
  __$$WorkExperiancesModelImplCopyWithImpl(_$WorkExperiancesModelImpl _value,
      $Res Function(_$WorkExperiancesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? from = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? to = freezed,
  }) {
    return _then(_$WorkExperiancesModelImpl(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkExperiancesModelImpl implements _WorkExperiancesModel {
  const _$WorkExperiancesModelImpl(
      {this.description, this.from, this.id, this.name, this.to});

  factory _$WorkExperiancesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkExperiancesModelImplFromJson(json);

  @override
  final String? description;
  @override
  final String? from;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? to;

  @override
  String toString() {
    return 'WorkExperiancesModel(description: $description, from: $from, id: $id, name: $name, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkExperiancesModelImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, from, id, name, to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkExperiancesModelImplCopyWith<_$WorkExperiancesModelImpl>
      get copyWith =>
          __$$WorkExperiancesModelImplCopyWithImpl<_$WorkExperiancesModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkExperiancesModelImplToJson(
      this,
    );
  }
}

abstract class _WorkExperiancesModel implements WorkExperiancesModel {
  const factory _WorkExperiancesModel(
      {final String? description,
      final String? from,
      final String? id,
      final String? name,
      final String? to}) = _$WorkExperiancesModelImpl;

  factory _WorkExperiancesModel.fromJson(Map<String, dynamic> json) =
      _$WorkExperiancesModelImpl.fromJson;

  @override
  String? get description;
  @override
  String? get from;
  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get to;
  @override
  @JsonKey(ignore: true)
  _$$WorkExperiancesModelImplCopyWith<_$WorkExperiancesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
