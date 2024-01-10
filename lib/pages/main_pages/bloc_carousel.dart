import 'dart:convert';
import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:daily_recipe/bloc/ads_bloc.dart';
import 'package:daily_recipe/bloc/ads_state.dart';
import 'package:daily_recipe/models/ads.model.dart';
import 'package:daily_recipe/pages/main_pages/carousel_slider.dart';
import 'package:daily_recipe/services/api_service.dart';
import 'package:daily_recipe/widgets/section_header.dart';
import 'package:daily_recipe/widgets/section_searchbar.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


var objectvalue = 0;

var listValue = [1, 2, 3, 4];

class BlocCarouselPage extends StatefulWidget {
  const BlocCarouselPage({Key? key});

  @override
  State<BlocCarouselPage> createState() => _BlocCarouselPageState();
}

class _BlocCarouselPageState extends State<BlocCarouselPage> {
  var sliderIndex = 0;

  CarouselController buttonCarouselController = CarouselController();

  List<Ad> adList = [];
  List<Ads> adsList = [];

  void getAds() async {
    var adsData = await rootBundle.loadString('assets/data/sample.json');
    var dataDecoded =
    List<Map<String, dynamic>>.from(jsonDecode(adsData)['ads']);

    adList = dataDecoded.map((e) => Ad.fromJson(e)).toList();
    adsList = dataDecoded.map((e) => Ads.fromJson(e)).toList();

    setState(() {});
  }

  @override
  void initState() {
    getAds();
    super.initState();
  }

  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AdsBloc>(
      create: (_) => AdsBloc(
          ApiService()),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: adList.isEmpty
              ? const CircularProgressIndicator()
              : ListView(
            padding: EdgeInsets.all(15),
            children: <Widget>[
              BlocBuilder<AdsBloc, dynamic>(builder: (context, state) {
                if (state is AdsLoading) {
                  return Center(
                    child: Platform.supportsTypedData
                        ? CircularProgressIndicator()
                        : CupertinoActivityIndicator(),
                  );
                } else if (state is AdsLoaded) {
                  List<Ads> ads = state.adsList;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Header(),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Text(
                          "Bonjour, Emma",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade400,
                            fontFamily: 'Hellix',
                          ),
                        ),
                      ),


                        SizedBox(
                        height: 10,
                ),
                Container(
                child: Text(
                "What would you like to cook today?",
                style: TextStyle(
                fontSize: 20.0,
                color: Colors.black87,
                fontFamily: 'Abril'),
                ),
                ),
                SizedBox(
                height: 20,
                ),

                SearchBarPage(),
                Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                Container(
                padding: EdgeInsets.only(top: 30.0),
                child: Text(
                "Today's Fresh Recipes",
                style: TextStyle(
                color: Colors.black87,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Hellix'),
                ),
                ),
                Container(
                padding: EdgeInsets.only(top: 30.0),
                child: TextButton(
                onPressed: () {},
                child: Text(
                "See All",
                style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
                color: Colors.deepOrange,
                fontFamily: 'Hellix'),
                ),
                ),
                ),
                ],
                ),
                SizedBox(
                height: 20,
                ),
                Container(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                CarouselSlider(
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                height: 300,
                enlargeStrategy:
                CenterPageEnlargeStrategy.height,
                enlargeCenterPage: false,
                viewportFraction: 1,
                onPageChanged: (index, context) {
                objectvalue = index;
                setState(() {});
                },
                ),
                items: adsList.map((ads) {
                return Builder(
                builder: (BuildContext context) {
                Ads ad = ads;
                return Container(
                width: 200,
                height: 300,
                margin:
                EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                borderRadius:
                BorderRadius.circular(10),
                color: Colors.grey.shade100),
                child: Expanded(
                child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                borderRadius:
                BorderRadius.circular(10),
                color: Colors.grey.shade100,
                ),
                height: 280,
                width: 200,
                child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                Container(
                child: Row(
                crossAxisAlignment:
                CrossAxisAlignment.center,
                children: [
                IconButton(
                icon: Icon(
                FontAwesomeIcons
                    .heart,
                color: Colors
                    .grey.shade400,
                size: 25),
                onPressed: () {},
                ),
                Image.asset(ad.image!,
                height: 120,
                width: 120,
                fit: BoxFit.fill),
                ],
                ),
                ),
                Text(
                ad.title.toString(),
                style: const TextStyle(
                fontSize: 8.0,
                fontWeight: FontWeight.w500,
                color: Colors.cyan,
                fontFamily: 'Hellix'),
                ),
                Text(
                ad.subtitle.toString(),
                style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
                fontFamily: 'Hellix'),
                ),
                Container(
                child: RatingBar.builder(
                initialRating: 5,
                maxRating: 1,
                itemCount: 5,
                itemSize: 10.0,
                itemBuilder: (context, _) =>
                Icon(Icons.star,
                color:
                Colors.deepOrange,
                size: 4),
                onRatingUpdate: (rating) =>
                setState(() {
                this.rating = rating;
                }),
                )),
                Container(
                child: Text(
                ad.calories.toString(),
                style: TextStyle(
                fontSize: 8.0,
                fontWeight:
                FontWeight.w500,
                color: Colors.deepOrange,
                fontFamily: 'Hellix'),
                ),
                ),
                Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                Container(
                child: Row(
                mainAxisAlignment:
                MainAxisAlignment
                    .spaceBetween,
                crossAxisAlignment:
                CrossAxisAlignment
                    .center,
                children: [
                Row(
                crossAxisAlignment:
                CrossAxisAlignment
                    .center,
                children: [
                Icon(
                FontAwesomeIcons
                    .clock,
                color: Colors
                    .grey
                    .shade400,
                size: 12),
                SizedBox(
                width: 5,
                ),
                Text(
                "10 mins",
                style: TextStyle(
                fontSize:
                10.0,
                fontWeight:
                FontWeight
                    .w500,
                color: Colors
                    .grey
                    .shade400,
                fontFamily:
                'Hellix'),
                ),
                ],
                ),
                SizedBox(
                width: 20,
                ),
                Row(
                crossAxisAlignment:
                CrossAxisAlignment
                    .center,
                children: [
                Icon(
                FontAwesomeIcons
                    .bellConcierge,
                color: Colors
                    .grey
                    .shade400,
                size: 12),
                SizedBox(
                width: 5,
                ),
                Text(
                "1 Serving",
                style: TextStyle(
                fontSize:
                10.0,
                fontWeight:
                FontWeight
                    .w500,
                color: Colors
                    .grey
                    .shade400,
                fontFamily:
                'Hellix'),
                ),
                ],
                ),
                ],
                ),
                ),
                ],
                ),
                ],
                ),
                ),
                ),
                );
                },
                );
                }).toList(),
                ),
                Center(
                child: DotsIndicator(
                dotsCount: listValue.length,
                position: objectvalue,
                onTap: (position) async {
                await buttonCarouselController
                    .animateToPage(position);
                objectvalue = position;
                setState(() {});
                },
                decorator: DotsDecorator(
                color: Colors.grey.shade400,
                size: const Size.square(9.0),
                activeColor: Colors.deepOrange,
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(5.0)),
                )),
                ),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                Flexible(
                child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                primary: Colors.deepOrange,
                ),
                onPressed: () =>
                buttonCarouselController.previousPage(),
                child: Text(
                '←',
                style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                ),
                ),
                ),
                ),
                Flexible(
                child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                primary: Colors.deepOrange,
                ),
                onPressed: () =>
                buttonCarouselController.nextPage(),
                child: Text(
                '→',
                style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                ),
                ),
                ),
                ),
                ],
                ),
                ],
                ),
                ),
                      Center(
                          child: Container(
                            height: 50.0,
                            width: 315,
                            decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius: BorderRadius.circular(15.0)),

                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => CarouselPage()));

                              },

                              child: Center(
                                child: Text("Carousel Slider Page", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0, fontFamily: 'Hellix' )),
                              ),
                            ),
                          )),
                    ],
                  );
                } else {
                  return Container();
                }


              })
            ],
          ),
        ),
      ),
    );
  }
}