import 'dart:convert';

//
// class ApiService{
//   Future<List<Ads>> getNowScrolling()async{
//     try{
//       final response = await json.get(Ads);
//       var ads = response.data['ads'] as List;
//       List<Ads> adsList = ads.map((e) => Ads.fromJson(e)).toList();
//       return adsList;
//     } catch (error, stacktrace) {
//       throw Exception(
//         'Exception aaccored: $error with stacktrace:$stacktrace');
//     }
//   }
// }

import 'package:daily_recipe/models/ads.model.dart';
import 'package:flutter/services.dart' show rootBundle;

class ApiService {
  Future<List<Ads>> getNowScrolling() async {
    try {
      final jsonString = await rootBundle.loadString('assets/ads.json');
      final jsonData = json.decode(jsonString);
      final ads = jsonData['ads'] as List;
      List<Ads> adsList = ads.map((e) => Ads.fromJson(e)).toList();
      return adsList;
    } catch (error, stacktrace) {
      throw Exception(
          'Exception occurred: $error with stacktrace: $stacktrace');
    }
  }
}
