// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'specialization_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Specializations _$SpecializationsFromJson(Map<String, dynamic> json) {
  return _Specializations.fromJson(json);
}

/// @nodoc
mixin _$Specializations {
  String? get experience_from => throw _privateConstructorUsedError;
  SpecializationModel? get specialization => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecializationsCopyWith<Specializations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecializationsCopyWith<$Res> {
  factory $SpecializationsCopyWith(
          Specializations value, $Res Function(Specializations) then) =
      _$SpecializationsCopyWithImpl<$Res, Specializations>;
  @useResult
  $Res call({String? experience_from, SpecializationModel? specialization});

  $SpecializationModelCopyWith<$Res>? get specialization;
}

/// @nodoc
class _$SpecializationsCopyWithImpl<$Res, $Val extends Specializations>
    implements $SpecializationsCopyWith<$Res> {
  _$SpecializationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? experience_from = freezed,
    Object? specialization = freezed,
  }) {
    return _then(_value.copyWith(
      experience_from: freezed == experience_from
          ? _value.experience_from
          : experience_from // ignore: cast_nullable_to_non_nullable
              as String?,
      specialization: freezed == specialization
          ? _value.specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as SpecializationModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpecializationModelCopyWith<$Res>? get specialization {
    if (_value.specialization == null) {
      return null;
    }

    return $SpecializationModelCopyWith<$Res>(_value.specialization!, (value) {
      return _then(_value.copyWith(specialization: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpecializationsImplCopyWith<$Res>
    implements $SpecializationsCopyWith<$Res> {
  factory _$$SpecializationsImplCopyWith(_$SpecializationsImpl value,
          $Res Function(_$SpecializationsImpl) then) =
      __$$SpecializationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? experience_from, SpecializationModel? specialization});

  @override
  $SpecializationModelCopyWith<$Res>? get specialization;
}

/// @nodoc
class __$$SpecializationsImplCopyWithImpl<$Res>
    extends _$SpecializationsCopyWithImpl<$Res, _$SpecializationsImpl>
    implements _$$SpecializationsImplCopyWith<$Res> {
  __$$SpecializationsImplCopyWithImpl(
      _$SpecializationsImpl _value, $Res Function(_$SpecializationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? experience_from = freezed,
    Object? specialization = freezed,
  }) {
    return _then(_$SpecializationsImpl(
      experience_from: freezed == experience_from
          ? _value.experience_from
          : experience_from // ignore: cast_nullable_to_non_nullable
              as String?,
      specialization: freezed == specialization
          ? _value.specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as SpecializationModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpecializationsImpl implements _Specializations {
  const _$SpecializationsImpl({this.experience_from, this.specialization});

  factory _$SpecializationsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecializationsImplFromJson(json);

  @override
  final String? experience_from;
  @override
  final SpecializationModel? specialization;

  @override
  String toString() {
    return 'Specializations(experience_from: $experience_from, specialization: $specialization)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationsImpl &&
            (identical(other.experience_from, experience_from) ||
                other.experience_from == experience_from) &&
            (identical(other.specialization, specialization) ||
                other.specialization == specialization));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, experience_from, specialization);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecializationsImplCopyWith<_$SpecializationsImpl> get copyWith =>
      __$$SpecializationsImplCopyWithImpl<_$SpecializationsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecializationsImplToJson(
      this,
    );
  }
}

abstract class _Specializations implements Specializations {
  const factory _Specializations(
      {final String? experience_from,
      final SpecializationModel? specialization}) = _$SpecializationsImpl;

  factory _Specializations.fromJson(Map<String, dynamic> json) =
      _$SpecializationsImpl.fromJson;

  @override
  String? get experience_from;
  @override
  SpecializationModel? get specialization;
  @override
  @JsonKey(ignore: true)
  _$$SpecializationsImplCopyWith<_$SpecializationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpecializationModel _$SpecializationModelFromJson(Map<String, dynamic> json) {
  return _SpecializationModel.fromJson(json);
}

/// @nodoc
mixin _$SpecializationModel {
  String? get created_at => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecializationModelCopyWith<SpecializationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecializationModelCopyWith<$Res> {
  factory $SpecializationModelCopyWith(
          SpecializationModel value, $Res Function(SpecializationModel) then) =
      _$SpecializationModelCopyWithImpl<$Res, SpecializationModel>;
  @useResult
  $Res call(
      {String? created_at,
      String? description,
      String? id,
      String? name,
      String? updated_at});
}

/// @nodoc
class _$SpecializationModelCopyWithImpl<$Res, $Val extends SpecializationModel>
    implements $SpecializationModelCopyWith<$Res> {
  _$SpecializationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? created_at = freezed,
    Object? description = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_value.copyWith(
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpecializationModelImplCopyWith<$Res>
    implements $SpecializationModelCopyWith<$Res> {
  factory _$$SpecializationModelImplCopyWith(_$SpecializationModelImpl value,
          $Res Function(_$SpecializationModelImpl) then) =
      __$$SpecializationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? created_at,
      String? description,
      String? id,
      String? name,
      String? updated_at});
}

/// @nodoc
class __$$SpecializationModelImplCopyWithImpl<$Res>
    extends _$SpecializationModelCopyWithImpl<$Res, _$SpecializationModelImpl>
    implements _$$SpecializationModelImplCopyWith<$Res> {
  __$$SpecializationModelImplCopyWithImpl(_$SpecializationModelImpl _value,
      $Res Function(_$SpecializationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? created_at = freezed,
    Object? description = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_$SpecializationModelImpl(
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpecializationModelImpl implements _SpecializationModel {
  const _$SpecializationModelImpl(
      {this.created_at, this.description, this.id, this.name, this.updated_at});

  factory _$SpecializationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecializationModelImplFromJson(json);

  @override
  final String? created_at;
  @override
  final String? description;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? updated_at;

  @override
  String toString() {
    return 'SpecializationModel(created_at: $created_at, description: $description, id: $id, name: $name, updated_at: $updated_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationModelImpl &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, created_at, description, id, name, updated_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecializationModelImplCopyWith<_$SpecializationModelImpl> get copyWith =>
      __$$SpecializationModelImplCopyWithImpl<_$SpecializationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecializationModelImplToJson(
      this,
    );
  }
}

abstract class _SpecializationModel implements SpecializationModel {
  const factory _SpecializationModel(
      {final String? created_at,
      final String? description,
      final String? id,
      final String? name,
      final String? updated_at}) = _$SpecializationModelImpl;

  factory _SpecializationModel.fromJson(Map<String, dynamic> json) =
      _$SpecializationModelImpl.fromJson;

  @override
  String? get created_at;
  @override
  String? get description;
  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get updated_at;
  @override
  @JsonKey(ignore: true)
  _$$SpecializationModelImplCopyWith<_$SpecializationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
