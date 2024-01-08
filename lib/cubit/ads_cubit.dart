import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:daily_recipe/models/ad.model..dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';

part 'ads_state.dart';

class AdsCubit extends Cubit<List<Ad>> {
  AdsCubit() : super([]);
  Future<void> fetchAds() async {
    try{
      final jsonData = await rootBundle.loadString('assets/data/sample.json');

      final List<dynamic> adsData = jsonDecode(jsonData);

      final ads = adsData.map((adsData){
        return Ad(
          title: adsData['title'],
          subtitle: adsData['subtitle'],
          image: adsData['image'],
        );
      }).toList();

      emit(ads);
    } catch(e){
      print('Error fetching ads: $e');
    }


  }
}
