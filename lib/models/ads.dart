// import 'dart:convert';
//
// import 'package:daily_recipe/models/ads.model.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
//
// class AdsProvider with ChangeNotifier{
//   // Map<String, dynamic> _map ={};
//   // bool _error = false;
//   // String _errorMessage ='';
//   List<Ad> _ads = [];
//
//   List<Ad> get ads => _ads;
//
//   void setAds(List<Ad> ads) {
//     _ads = ads;
//     notifyListeners();
//   }
//
//   void fetchAds(BuildContext context) async {
//     String jsonData = await DefaultAssetBundle.of(context).loadString(
//         'assets/data.json');
//     List<dynamic> jsonAds = json.decode(jsonData)['ads'];
//     List<Ad> ads = jsonAds.map((json) => Ad.fromJson(json)).toList();
//   }
// }