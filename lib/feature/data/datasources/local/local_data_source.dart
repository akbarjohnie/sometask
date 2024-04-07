import 'dart:convert';
import 'dart:developer' show log;

import 'package:shared_preferences/shared_preferences.dart';

import 'package:first_task/feature/data/datasources/local/local_data_source_keys.dart';
import 'package:first_task/core/error/exceptions.dart';
import 'package:first_task/feature/data/models/specialists_model/specialists_model.dart';

abstract interface class ISpecialistsLocalDataSource {
  /// Gets the cached [List<SpecialistsModel>] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [CacheException] if no cached data is present.
  Future<List<SpecialistsModel>> getLastSpecialistsModelFromCache();

  Future<void> specialistsToCache(List<SpecialistsModel> specialists);
}

class SpecialistsLocalDataSourceImpl implements ISpecialistsLocalDataSource {
  final SharedPreferences sharedPreferences;

  SpecialistsLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<List<SpecialistsModel>> getLastSpecialistsModelFromCache() {
    final jsonSpecialistsList = sharedPreferences
        .getStringList(LocalDataSourceKeys.cachedSpecialistsList);
    if (jsonSpecialistsList != null && jsonSpecialistsList.isNotEmpty) {
      log('Get Specialists from Cache: ${jsonSpecialistsList.length}');
      return Future.value(jsonSpecialistsList
          .map((specialists) =>
              SpecialistsModel.fromJson(json.decode(specialists)))
          .toList());
    } else {
      throw CacheException();
    }
  }

  @override
  Future<List<String>> specialistsToCache(List<SpecialistsModel> specialists) {
    final List<String> jsonSpecialistsList = specialists
        .map((specialists) => json.encode(specialists.toJson()))
        .toList();

    sharedPreferences.setStringList(
      LocalDataSourceKeys.cachedSpecialistsList,
      jsonSpecialistsList,
    );

    log('SpecialistModel to write Cache: ${jsonSpecialistsList.length}');
    return Future.value(jsonSpecialistsList);
  }
}
