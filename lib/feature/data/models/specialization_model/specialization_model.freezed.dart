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
  DescriptionModel? get specialization => throw _privateConstructorUsedError;

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
  $Res call({String? experience_from, DescriptionModel? specialization});

  $DescriptionModelCopyWith<$Res>? get specialization;
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
              as DescriptionModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DescriptionModelCopyWith<$Res>? get specialization {
    if (_value.specialization == null) {
      return null;
    }

    return $DescriptionModelCopyWith<$Res>(_value.specialization!, (value) {
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
  $Res call({String? experience_from, DescriptionModel? specialization});

  @override
  $DescriptionModelCopyWith<$Res>? get specialization;
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
              as DescriptionModel?,
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
  final DescriptionModel? specialization;

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
      final DescriptionModel? specialization}) = _$SpecializationsImpl;

  factory _Specializations.fromJson(Map<String, dynamic> json) =
      _$SpecializationsImpl.fromJson;

  @override
  String? get experience_from;
  @override
  DescriptionModel? get specialization;
  @override
  @JsonKey(ignore: true)
  _$$SpecializationsImplCopyWith<_$SpecializationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
