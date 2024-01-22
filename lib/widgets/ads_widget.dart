import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:daily_recipe/provider/ads.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AdsWidget extends StatefulWidget {
  const AdsWidget({super.key});

  @override
  State<AdsWidget> createState() => _AdsWidgetState();
}

class _AdsWidgetState extends State<AdsWidget> {

  @override
  void initState() {
    init();
    super.initState();
  }

  void init() async{
    await Provider.of<AdsProvider>(context, listen: false).getAds();
  }


  @override
  void dispose() {
    Provider.of<AdsProvider>(context, listen: false).disposeCarousel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Consumer<AdsProvider>(
      builder: (ctx, adProvider, _) => adProvider.adsList == null
          ? const CircularProgressIndicator()
          : (adProvider.adsList?.isEmpty ?? false)
          ? const Text('No Data Found')
    : Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CarouselSlider(
                carouselController: adProvider.carouselController,
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  height: 300,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  enlargeCenterPage: false,
                  viewportFraction: 1,
                  onPageChanged: (index, _) => adProvider.onPageChanged(index),
                ),

                items: adProvider.adsList!.map((ad) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: 200,
                        height: 300,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade100
                        ),
                        child: Expanded(
                          child:Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade100,

                            ),
                            height: 280,
                            width: 200,

                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Container(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      IconButton(icon: Icon(FontAwesomeIcons.heart, color: Colors.grey.shade400, size: 25),onPressed: () {},),
                                      Container(
                                        width: MediaQuery.of(context).size.width,
                                        margin:
                                        const EdgeInsets.symmetric(horizontal: 5.0),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.fitWidth,
                                                image: NetworkImage(ad.image!))),
                                      ),

                                    ],
                                  ),

                                ),

                                Text( ad.title.toString(), style: const TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.cyan, fontFamily: 'Hellix'),),

                                Text( ad.subtitle.toString(), style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black87, fontFamily: 'Hellix'),),


                                Container(
                                  child: Text( ad.calories.toString(), style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.deepOrange, fontFamily: 'Hellix'),),


                                ),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child:Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,

                                        children:
                                        [
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,

                                            children: [
                                              Icon(FontAwesomeIcons.clock, color: Colors.grey.shade400, size: 12),
                                              SizedBox(width: 5,),
                                              Text( ad.time.toString(), style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),

                                            ],
                                          ),

                                          SizedBox(width: 20,),

                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,

                                            children: [
                                              Icon(FontAwesomeIcons.bellConcierge, color: Colors.grey.shade400, size: 12),
                                              SizedBox(width: 5,),
                                              Text( ad.serving.toString(), style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),
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
                    dotsCount: adProvider.adsList!.length,
                    position: adProvider.sliderIndex,
                    onTap: (position) => adProvider.onDotTapped(position),
                    decorator: DotsDecorator(
                      color: Colors.grey.shade400,
                      size: const Size.square(9.0),
                      activeColor: Colors.deepOrange,
                      activeSize: const Size(18.0, 9.0),
                      activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),)),),

            ],
          ),
        ),

      ],
    ),

    );
  }
}
