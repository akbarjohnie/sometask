// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialists_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpecialistsModelImpl _$$SpecialistsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SpecialistsModelImpl(
      total: json['total'] as int?,
      limit: json['limit'] as int?,
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : ResultModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SpecialistsModelImplToJson(
        _$SpecialistsModelImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'limit': instance.limit,
      'page': instance.page,
      'results': instance.results,
    };

_$ResultModelImpl _$$ResultModelImplFromJson(Map<String, dynamic> json) =>
    _$ResultModelImpl(
      educations: (json['educations'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : EducationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      first_name: json['first_name'] as String?,
      id: json['id'] as String?,
      image_url: json['image_url'] as String?,
      last_name: json['last_name'] as String?,
      middle_name: json['middle_name'] as String?,
      specializations: (json['specializations'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Specializations.fromJson(e as Map<String, dynamic>))
          .toList(),
      work_experiences: (json['work_experiences'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : WorkExperiancesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResultModelImplToJson(_$ResultModelImpl instance) =>
    <String, dynamic>{
      'educations': instance.educations,
      'first_name': instance.first_name,
      'id': instance.id,
      'image_url': instance.image_url,
      'last_name': instance.last_name,
      'middle_name': instance.middle_name,
      'specializations': instance.specializations,
      'work_experiences': instance.work_experiences,
    };

_$EducationModelImpl _$$EducationModelImplFromJson(Map<String, dynamic> json) =>
    _$EducationModelImpl(
      description: json['description'] as String?,
      from: json['from'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      to: json['to'] as String?,
    );

Map<String, dynamic> _$$EducationModelImplToJson(
        _$EducationModelImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'from': instance.from,
      'id': instance.id,
      'name': instance.name,
      'to': instance.to,
    };

_$SpecializationsImpl _$$SpecializationsImplFromJson(
        Map<String, dynamic> json) =>
    _$SpecializationsImpl(
      experience_from: json['experience_from'] as String?,
      specialization: json['specialization'] == null
          ? null
          : SpecializationModel.fromJson(
              json['specialization'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SpecializationsImplToJson(
        _$SpecializationsImpl instance) =>
    <String, dynamic>{
      'experience_from': instance.experience_from,
      'specialization': instance.specialization,
    };

_$SpecializationModelImpl _$$SpecializationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SpecializationModelImpl(
      created_at: json['created_at'] as String?,
      description: json['description'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$SpecializationModelImplToJson(
        _$SpecializationModelImpl instance) =>
    <String, dynamic>{
      'created_at': instance.created_at,
      'description': instance.description,
      'id': instance.id,
      'name': instance.name,
      'updated_at': instance.updated_at,
    };

_$WorkExperiancesModelImpl _$$WorkExperiancesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkExperiancesModelImpl(
      description: json['description'] as String?,
      from: json['from'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      to: json['to'] as String?,
    );

Map<String, dynamic> _$$WorkExperiancesModelImplToJson(
        _$WorkExperiancesModelImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'from': instance.from,
      'id': instance.id,
      'name': instance.name,
      'to': instance.to,
    };
