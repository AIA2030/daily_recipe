import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:daily_recipe/bloc/ads_state.dart';
import 'package:daily_recipe/models/ads.model.dart';
import 'package:daily_recipe/services/api_service.dart';
import 'package:equatable/equatable.dart';


part 'ads_event.dart';

class AdsBloc extends Bloc<AdsEvent, AdsState> {
  final ApiService service;

  AdsBloc(this.service,) : super(AdsLoading());

  @override
  Stream<AdsState> mapEventToState(AdsEvent event) async* {
    if (event is AdsEventStarted) {
      yield* _mapAdsEventStateToState(event.adsId, event.query);
    }
  }

  @override
  Stream<AdsState> _mapAdsEventStateToState(int adsId, String query) async* {
    final service = ApiService();
    yield AdsLoading();
    try {
      List<Ads>? adsList; // Add null safety symbol to the type
      if (adsId == 0) {
        adsList = await service.getNowScrolling();
      } else {
        print(adsId);
      }
      if (adsList != null) { // Add null check before yielding
        yield AdsLoaded(adsList);
      }
    } on Exception catch (e) {
      print(e);
      yield AdsError();
    }
  }


}