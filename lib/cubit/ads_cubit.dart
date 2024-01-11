import 'package:bloc/bloc.dart';
import 'package:daily_recipe/models/ads.model.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:equatable/equatable.dart';


part 'ads_state.dart';

class AdsCubit extends Cubit<AdsState> {
  AdsCubit() : super(AdsInitial());

  void getAds() async {
    try {
      emit(AdsLoading());
      var adsData = await rootBundle.loadString('assets/data/sample.json');
      var dataDecoded =
      List<Map<String, dynamic>>.from(jsonDecode(adsData)['ads']);
      var adList = dataDecoded.map((e) => Ad.fromJson(e)).toList();
      emit(AdsLoaded(adList));
    } catch (e) {
      emit(AdsError(e.toString()));
    }
  }
}
