import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:first_task/core/error/exceptions.dart';
import 'package:first_task/feature/data/models/specialists_model/specialists_model.dart';

abstract interface class ISpecialistsRemoteDataSource {
  /// Calls the /client/v1/specialists?page=$page&limit=$limit&sort=-created_at endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<List<SpecialistsModel>> getAllSpecialists(int page);

  /// Calls the '' endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  // Future<List<SpecialistsModel>> searchSpecialists(String query);
}

class SpecialistsRemoteDataSourceImpl implements ISpecialistsRemoteDataSource {
  final Dio dio;
  final _baseUrl = dotenv.env['BASE_URL'];

  SpecialistsRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<SpecialistsModel>> getAllSpecialists(int page) {
    final url =
        '$_baseUrl/client/v1/specialists?page=$page&limit=10&sort=-created_at';
    return _getDataFromUrl(url);
  }

  Future<List<SpecialistsModel>> _getDataFromUrl(String url) async {
    dio.options.headers = {'accept': 'application/json'};

    final response = await dio.get(url);
    if (response.statusCode == 200) {
      final Map<String, dynamic> result = jsonDecode(
        response.toString(),
      );
      return [SpecialistsModel.fromJson(result)];
    } else {
      throw ServerException();
    }
  }
}
