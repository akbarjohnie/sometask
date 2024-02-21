// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'results_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResultModel _$ResultModelFromJson(Map<String, dynamic> json) {
  return _ResultModel.fromJson(json);
}

/// @nodoc
mixin _$ResultModel {
  List<EducationModel?>? get educations => throw _privateConstructorUsedError;
  String? get first_name => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get image_url => throw _privateConstructorUsedError;
  String? get last_name => throw _privateConstructorUsedError;
  String? get middle_name => throw _privateConstructorUsedError;
  List<Specializations?>? get specializations =>
      throw _privateConstructorUsedError;
  List<WorkExperiancesModel?>? get work_experiences =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultModelCopyWith<ResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultModelCopyWith<$Res> {
  factory $ResultModelCopyWith(
          ResultModel value, $Res Function(ResultModel) then) =
      _$ResultModelCopyWithImpl<$Res, ResultModel>;
  @useResult
  $Res call(
      {List<EducationModel?>? educations,
      String? first_name,
      String? id,
      String? image_url,
      String? last_name,
      String? middle_name,
      List<Specializations?>? specializations,
      List<WorkExperiancesModel?>? work_experiences});
}

/// @nodoc
class _$ResultModelCopyWithImpl<$Res, $Val extends ResultModel>
    implements $ResultModelCopyWith<$Res> {
  _$ResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? educations = freezed,
    Object? first_name = freezed,
    Object? id = freezed,
    Object? image_url = freezed,
    Object? last_name = freezed,
    Object? middle_name = freezed,
    Object? specializations = freezed,
    Object? work_experiences = freezed,
  }) {
    return _then(_value.copyWith(
      educations: freezed == educations
          ? _value.educations
          : educations // ignore: cast_nullable_to_non_nullable
              as List<EducationModel?>?,
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image_url: freezed == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      middle_name: freezed == middle_name
          ? _value.middle_name
          : middle_name // ignore: cast_nullable_to_non_nullable
              as String?,
      specializations: freezed == specializations
          ? _value.specializations
          : specializations // ignore: cast_nullable_to_non_nullable
              as List<Specializations?>?,
      work_experiences: freezed == work_experiences
          ? _value.work_experiences
          : work_experiences // ignore: cast_nullable_to_non_nullable
              as List<WorkExperiancesModel?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultModelImplCopyWith<$Res>
    implements $ResultModelCopyWith<$Res> {
  factory _$$ResultModelImplCopyWith(
          _$ResultModelImpl value, $Res Function(_$ResultModelImpl) then) =
      __$$ResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<EducationModel?>? educations,
      String? first_name,
      String? id,
      String? image_url,
      String? last_name,
      String? middle_name,
      List<Specializations?>? specializations,
      List<WorkExperiancesModel?>? work_experiences});
}

/// @nodoc
class __$$ResultModelImplCopyWithImpl<$Res>
    extends _$ResultModelCopyWithImpl<$Res, _$ResultModelImpl>
    implements _$$ResultModelImplCopyWith<$Res> {
  __$$ResultModelImplCopyWithImpl(
      _$ResultModelImpl _value, $Res Function(_$ResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? educations = freezed,
    Object? first_name = freezed,
    Object? id = freezed,
    Object? image_url = freezed,
    Object? last_name = freezed,
    Object? middle_name = freezed,
    Object? specializations = freezed,
    Object? work_experiences = freezed,
  }) {
    return _then(_$ResultModelImpl(
      educations: freezed == educations
          ? _value._educations
          : educations // ignore: cast_nullable_to_non_nullable
              as List<EducationModel?>?,
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image_url: freezed == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      middle_name: freezed == middle_name
          ? _value.middle_name
          : middle_name // ignore: cast_nullable_to_non_nullable
              as String?,
      specializations: freezed == specializations
          ? _value._specializations
          : specializations // ignore: cast_nullable_to_non_nullable
              as List<Specializations?>?,
      work_experiences: freezed == work_experiences
          ? _value._work_experiences
          : work_experiences // ignore: cast_nullable_to_non_nullable
              as List<WorkExperiancesModel?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultModelImpl implements _ResultModel {
  const _$ResultModelImpl(
      {final List<EducationModel?>? educations,
      this.first_name,
      this.id,
      this.image_url,
      this.last_name,
      this.middle_name,
      final List<Specializations?>? specializations,
      final List<WorkExperiancesModel?>? work_experiences})
      : _educations = educations,
        _specializations = specializations,
        _work_experiences = work_experiences;

  factory _$ResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultModelImplFromJson(json);

  final List<EducationModel?>? _educations;
  @override
  List<EducationModel?>? get educations {
    final value = _educations;
    if (value == null) return null;
    if (_educations is EqualUnmodifiableListView) return _educations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? first_name;
  @override
  final String? id;
  @override
  final String? image_url;
  @override
  final String? last_name;
  @override
  final String? middle_name;
  final List<Specializations?>? _specializations;
  @override
  List<Specializations?>? get specializations {
    final value = _specializations;
    if (value == null) return null;
    if (_specializations is EqualUnmodifiableListView) return _specializations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<WorkExperiancesModel?>? _work_experiences;
  @override
  List<WorkExperiancesModel?>? get work_experiences {
    final value = _work_experiences;
    if (value == null) return null;
    if (_work_experiences is EqualUnmodifiableListView)
      return _work_experiences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResultModel(educations: $educations, first_name: $first_name, id: $id, image_url: $image_url, last_name: $last_name, middle_name: $middle_name, specializations: $specializations, work_experiences: $work_experiences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultModelImpl &&
            const DeepCollectionEquality()
                .equals(other._educations, _educations) &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image_url, image_url) ||
                other.image_url == image_url) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.middle_name, middle_name) ||
                other.middle_name == middle_name) &&
            const DeepCollectionEquality()
                .equals(other._specializations, _specializations) &&
            const DeepCollectionEquality()
                .equals(other._work_experiences, _work_experiences));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_educations),
      first_name,
      id,
      image_url,
      last_name,
      middle_name,
      const DeepCollectionEquality().hash(_specializations),
      const DeepCollectionEquality().hash(_work_experiences));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultModelImplCopyWith<_$ResultModelImpl> get copyWith =>
      __$$ResultModelImplCopyWithImpl<_$ResultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultModelImplToJson(
      this,
    );
  }
}

abstract class _ResultModel implements ResultModel {
  const factory _ResultModel(
      {final List<EducationModel?>? educations,
      final String? first_name,
      final String? id,
      final String? image_url,
      final String? last_name,
      final String? middle_name,
      final List<Specializations?>? specializations,
      final List<WorkExperiancesModel?>? work_experiences}) = _$ResultModelImpl;

  factory _ResultModel.fromJson(Map<String, dynamic> json) =
      _$ResultModelImpl.fromJson;

  @override
  List<EducationModel?>? get educations;
  @override
  String? get first_name;
  @override
  String? get id;
  @override
  String? get image_url;
  @override
  String? get last_name;
  @override
  String? get middle_name;
  @override
  List<Specializations?>? get specializations;
  @override
  List<WorkExperiancesModel?>? get work_experiences;
  @override
  @JsonKey(ignore: true)
  _$$ResultModelImplCopyWith<_$ResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
