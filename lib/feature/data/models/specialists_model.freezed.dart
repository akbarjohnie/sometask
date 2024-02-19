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
  int? get total => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
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
  $Res call({int? total, int? limit, int? page, List<ResultModel?>? results});
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
    Object? total = freezed,
    Object? limit = freezed,
    Object? page = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
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
  $Res call({int? total, int? limit, int? page, List<ResultModel?>? results});
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
    Object? total = freezed,
    Object? limit = freezed,
    Object? page = freezed,
    Object? results = freezed,
  }) {
    return _then(_$SpecialistsModelImpl(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {this.total, this.limit, this.page, final List<ResultModel?>? results})
      : _results = results;

  factory _$SpecialistsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecialistsModelImplFromJson(json);

  @override
  final int? total;
  @override
  final int? limit;
  @override
  final int? page;
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
      {final int? total,
      final int? limit,
      final int? page,
      final List<ResultModel?>? results}) = _$SpecialistsModelImpl;

  factory _SpecialistsModel.fromJson(Map<String, dynamic> json) =
      _$SpecialistsModelImpl.fromJson;

  @override
  int? get total;
  @override
  int? get limit;
  @override
  int? get page;
  @override
  List<ResultModel?>? get results;
  @override
  @JsonKey(ignore: true)
  _$$SpecialistsModelImplCopyWith<_$SpecialistsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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

EducationModel _$EducationModelFromJson(Map<String, dynamic> json) {
  return _EducationModel.fromJson(json);
}

/// @nodoc
mixin _$EducationModel {
  String? get description => throw _privateConstructorUsedError;
  String? get from => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EducationModelCopyWith<EducationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationModelCopyWith<$Res> {
  factory $EducationModelCopyWith(
          EducationModel value, $Res Function(EducationModel) then) =
      _$EducationModelCopyWithImpl<$Res, EducationModel>;
  @useResult
  $Res call(
      {String? description,
      String? from,
      String? id,
      String? name,
      String? to});
}

/// @nodoc
class _$EducationModelCopyWithImpl<$Res, $Val extends EducationModel>
    implements $EducationModelCopyWith<$Res> {
  _$EducationModelCopyWithImpl(this._value, this._then);

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
abstract class _$$EducationModelImplCopyWith<$Res>
    implements $EducationModelCopyWith<$Res> {
  factory _$$EducationModelImplCopyWith(_$EducationModelImpl value,
          $Res Function(_$EducationModelImpl) then) =
      __$$EducationModelImplCopyWithImpl<$Res>;
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
class __$$EducationModelImplCopyWithImpl<$Res>
    extends _$EducationModelCopyWithImpl<$Res, _$EducationModelImpl>
    implements _$$EducationModelImplCopyWith<$Res> {
  __$$EducationModelImplCopyWithImpl(
      _$EducationModelImpl _value, $Res Function(_$EducationModelImpl) _then)
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
    return _then(_$EducationModelImpl(
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
class _$EducationModelImpl implements _EducationModel {
  const _$EducationModelImpl(
      {this.description, this.from, this.id, this.name, this.to});

  factory _$EducationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EducationModelImplFromJson(json);

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
    return 'EducationModel(description: $description, from: $from, id: $id, name: $name, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EducationModelImpl &&
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
  _$$EducationModelImplCopyWith<_$EducationModelImpl> get copyWith =>
      __$$EducationModelImplCopyWithImpl<_$EducationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EducationModelImplToJson(
      this,
    );
  }
}

abstract class _EducationModel implements EducationModel {
  const factory _EducationModel(
      {final String? description,
      final String? from,
      final String? id,
      final String? name,
      final String? to}) = _$EducationModelImpl;

  factory _EducationModel.fromJson(Map<String, dynamic> json) =
      _$EducationModelImpl.fromJson;

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
  _$$EducationModelImplCopyWith<_$EducationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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
