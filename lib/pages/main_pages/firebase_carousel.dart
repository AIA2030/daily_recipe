import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:daily_recipe/widgets/ads_widget.dart';
import 'package:flutter/material.dart';
import 'package:overlay_kit/overlay_kit.dart';

class FirebaseCarouselPage extends StatefulWidget {
  const FirebaseCarouselPage({super.key});

  @override
  State<FirebaseCarouselPage> createState() => _FirebaseCarouselPageState();
}

class _FirebaseCarouselPageState extends State<FirebaseCarouselPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            AdsWidget(),

            SizedBox(height: 10),

            Center(
                child: Container(
                  height: 50.0,
                  width: 315,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(15.0)),

                  child: InkWell(
                    onTap: () async {
                      OverlayLoadingProgress.start();

                      await FirebaseFirestore.instance.collection('ads')
                          .doc("custom id").set({
                        "title" : "Breakfast",
                        "subtitle" : "Sweet Potato Pie",
                        "image" : "https://drive.google.com/file/d/1fyaQASuXTatzSC6aLKs5TDFv6S-BHPPM/view?usp=drive_link",
                        "calories": "250 Calories",
                        "prep_time" : "10 mins",
                        "serving" : "1 Serving",
                      });

                    },

                    child: Center(
                      child: Text("Add", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0, fontFamily: 'Hellix' )),
                    ),
                  ),
                )),

          ],
        ),
      ),

    );


  }
}
