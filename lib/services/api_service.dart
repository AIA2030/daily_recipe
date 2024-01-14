
import 'dart:convert';

import 'package:daily_recipe/models/ads.model.dart';
import 'package:flutter/services.dart' show rootBundle;

class ApiService {
  Future<List<Ad>> getNowScrolling() async {
    try {
      final jsonString = await rootBundle.loadString('assets/ads.json');
      final jsonData = json.decode(jsonString);
      final ads = jsonData['ads'] as List;
      List<Ad> adsList = ads.map((e) => Ad.fromJson(e)).toList();
      return adsList;
    } catch (error, stacktrace) {
      throw Exception(
          'Exception occurred: $error with stacktrace: $stacktrace');
    }
  }
}
