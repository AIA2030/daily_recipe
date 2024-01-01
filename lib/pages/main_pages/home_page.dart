import 'package:carousel_slider/carousel_slider.dart';
import 'package:daily_recipe/pages/main_pages/carousel_slider.dart';
import 'package:daily_recipe/widgets/herzontial_scroll.dart';
import 'package:daily_recipe/widgets/section_header.dart';
import 'package:daily_recipe/widgets/section_searchbar.dart';
import 'package:daily_recipe/widgets/vertical_scroll.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


 var objectvalue =0;

CarouselController buttonCarouselController = CarouselController();

var listValue = [1,2,3,4];
// void main() => runApp(CarouselDemo());

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
double rating =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Header(),

                SizedBox(height: 10,),

                Container(
                  padding: EdgeInsets.only( left: 20.0, right: 200.0),
                  child: Text( "Bonjour, Emma", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),
                ),

                SizedBox(height: 10,),

                Container(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text( "What would you like to cook today?", style: TextStyle(fontSize: 20.0, color: Colors.black87, fontFamily: 'Abril'),),
                ),

                SizedBox(height: 20,),

                SearchBarPage(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top:30.0, left: 0.0, right: 50.0),
                      child: Text("Today's Fresh Recipes", style: TextStyle(color: Colors.black87, fontSize: 18.0, fontWeight: FontWeight.bold, fontFamily: 'Hellix'),),
                    ),

                    Container(
                      padding: EdgeInsets.only(top:30.0, left: 50.0, right: 0.0),
                      child: Text( "See All", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.deepOrange, fontFamily: 'Hellix'),),
                    ),

                  ],
                ),

                SizedBox(height: 5,),

                HerzontialScroll(),



                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top:30.0, left: 0.0, right: 75.0),
                      child: Text("Recommended", style: TextStyle(color: Colors.black87, fontSize: 18.0, fontWeight: FontWeight.bold, fontFamily: 'Hellix'),),
                    ),

                    Container(
                      padding: EdgeInsets.only(top:30.0, left: 75.0, right: 00.0),
                      child: Text( "See All", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.deepOrange, fontFamily: 'Hellix'),),
                    ),

                  ],
                ),

                SizedBox(height: 5,),

                VerticalScroll(),

                SizedBox(height: 5),

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
            ),
        ),
      ),
    );
  }
}
