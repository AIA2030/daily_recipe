// import 'package:shared_preferences/shared_preferences.dart';
//
// abstract class PrefrenceServices{
//   static SharedPreferences? prefs;
//
//   static bool checkUser(){
//     return prefs?.getBool('isLogin') ?? false;
//   }
// }
//
// import 'dart:convert';
//
// import 'package:daily_recipe/models/ad.model..dart';
// import 'package:flutter/services.dart';
//
// class AdService {
//   Future<List<Ad>> getAds() async {
//     final jsonString= await rootBundle.loadString('assets/data/sample.json'); // Replace with your API endpoint
//     if (jsonString.isNotEmpty) {
//       final List<dynamic> jsonList = jsonDecode(jsonString);
//       return jsonList.map((jsonData) => Ad.fromJson(jsonData)).toList();
//     } else {
//       throw Exception('Failed to load ads');
//     }
//   }
// }