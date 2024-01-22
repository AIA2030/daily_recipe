
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:daily_recipe/models/ads.model.dart';
import 'package:flutter/cupertino.dart';

class AdProvider extends ChangeNotifier{
  List<Ad>? _adsList;
  List<Ad>? get adsList => _adsList;
  int sliderIndex = 0;
  CarouselController? carouselController;

  void disposeCarousel(){
    carouselController = null;
  }

  void onPageChanged(int index){
    sliderIndex = index;
    notifyListeners();
  }

  void onDotTapped(int position) async {
    await carouselController?.animateToPage(position);
    sliderIndex = position;
    notifyListeners();
  }

  void initCarousel(){
    carouselController = CarouselController();
  }

  Future<void> getAds() async {
    try{
      var result = await FirebaseFirestore.instance.collection('ads')
          .where('isActive', isEqualTo: true).get();

      if (result.docs.isNotEmpty) {
        _adsList = List<Ad>.from(
          result.docs.map((doc) => Ad.fromJson(doc.data(), doc.id)));
      } else {
        _adsList = [];
      }
      notifyListeners();
    } catch (e) {
      _adsList =[];
      notifyListeners();
    }
  }
}


