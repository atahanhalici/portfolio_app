import 'package:flutter/material.dart';
import 'package:portfolio_app/locator.dart';
import 'package:portfolio_app/services/apiservices.dart';
import 'package:portfolio_app/services/dbservices.dart';

class Repository {
  final DbServices _databaseService = locator<DbServices>();
  final ApiServices _apiServices = locator<ApiServices>();

  nitelikGetir() async {
    return await _databaseService.nitelikGetir();
  }

  deneyimGetir() async {
    return await _databaseService.deneyimGetir();
  }

  Future<Map<String, Map>> hakkimdaGetir() async {
    return await _databaseService.hakkimdaGetir();
  }

  projeGetir() async {
    return await _apiServices.projeGetir();
  }
}
