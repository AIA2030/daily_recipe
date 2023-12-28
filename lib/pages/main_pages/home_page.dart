import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final List<String> objectList =[
      'assets/images/frensh toast 2 copy.png'
      'assets/images/Cinnamon Toaast copy.png'
      'assets/images/460x533_ChickenThighs_2 copy.png'
      'assets/images/Muffins copy.png'

   ];

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
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(

        leading: IconButton (icon: Icon(FontAwesomeIcons.barsStaggered, color: Colors.black87, size: 25,), onPressed: () {

        },),

        actions: [
          IconButton(icon: Icon(Icons.notifications_none_outlined, color: Colors.black87, size: 25),onPressed: () {},),
        ],
      ),

      body: SafeArea(
        child: ListView(
            padding: EdgeInsets.all(20),

            children: [Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  padding: EdgeInsets.only( left: 20.0, right: 190.0),
                  child: Text( "Bonjour, Emma", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),
                ),

                SizedBox(height: 10,),

                Container(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text( "What would you like to cook today?", style: TextStyle(fontSize: 20.0, color: Colors.black87, fontFamily: 'Abril'),),
                ),

                SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade200,

                      ),
                        height: 40,
                        width: 220,

                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(icon: Icon(Icons.search_outlined, color: Colors.grey.shade400, size: 25),onPressed: () {},),
                          Text( "Search for recipes", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),
                        ],
                      )
                    ),

                    SizedBox(width: 15,),

                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade200,

                        ),
                        height: 40,
                        width: 40,

                      child:IconButton(icon: Icon(FontAwesomeIcons.sliders, color: Colors.black87, size: 20),onPressed: () {},),

                    ),

                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top:30.0, left: 20.0, right: 20.0),
                      child: Text("Today's Fresh Recipes", style: TextStyle(color: Colors.black87, fontSize: 18.0, fontWeight: FontWeight.bold, fontFamily: 'Hellix'),),
                    ),

                    Container(
                      padding: EdgeInsets.only(top:30.0, left: 20.0, right: 20.0),
                      child: Text( "See All", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.deepOrange, fontFamily: 'Hellix'),),
                    ),

                  ],
                ),

                SizedBox(height: 20,),


               Container(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     CarouselSlider(
                       carouselController: buttonCarouselController,
                       options: CarouselOptions(
                         autoPlay: false,
                         aspectRatio: 2.0,
                         height: 300,
                         enlargeStrategy: CenterPageEnlargeStrategy.height,
                         enlargeCenterPage: false,
                         viewportFraction: 1,
                         onPageChanged: (index, context){
                           objectvalue =index;
                           setState(() {});
                         },

                       ),
                       items: [1,2,3,4].map((i) {
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
                                             Image.asset('assets/images/frensh toast 2 copy.png', height: 120, width: 120, fit: BoxFit.fill),
                                           ],
                                         ),

                                       ),

                                       Text( "Breakfast", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.cyan, fontFamily: 'Hellix'),),

                                       Text( "French Toast with Berries", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black87, fontFamily: 'Hellix'),),

                                       Container(
                                           child: RatingBar.builder(
                                             initialRating: 5,
                                             maxRating: 1,
                                             itemCount: 5,
                                             itemSize: 10.0,
                                             itemBuilder: (context, _) => Icon(Icons.star, color: Colors.deepOrange,size: 4 ),
                                             onRatingUpdate: (rating) => setState(() {
                                               this.rating = rating;
                                             }

                                             ),

                                           )

                                       ),


                                       Container(
                                         child: Text( "120 Calories", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.deepOrange, fontFamily: 'Hellix'),),


                                       ),

                                       Container(
                                         child: Row(
                                           crossAxisAlignment: CrossAxisAlignment.center,
                                           children: [
                                             IconButton(icon: Icon(FontAwesomeIcons.clock, color: Colors.grey.shade400, size: 10),onPressed: () {},),
                                             Text( "10 mins", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),
                                             IconButton(icon: Icon(FontAwesomeIcons.bellConcierge, color: Colors.grey.shade400, size: 10),onPressed: () {},),
                                             Text( "1 Serving", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),

                                           ],
                                         ),

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
                       child: DotsIndicator( dotsCount: listValue.length,
                           position: objectvalue,
                           onTap: (position) async {
                             await buttonCarouselController.animateToPage(position);
                             objectvalue = position;
                             setState(() {});
                           },
                           decorator: DotsDecorator(
                             color: Colors.grey.shade400,
                             size: const Size.square(9.0),
                             activeColor: Colors.deepOrange,
                             activeSize: const Size(18.0, 9.0),
                             activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),)),),

                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                         Flexible(
                           child: ElevatedButton(
                             style: ElevatedButton.styleFrom(primary: Colors.deepOrange,),
                             onPressed: () => buttonCarouselController.previousPage(),
                             child: Text('←', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize:20,),),
                           ),
                         ),
                         Flexible(
                           child: ElevatedButton(
                             style: ElevatedButton.styleFrom(primary: Colors.deepOrange,),
                             onPressed: () => buttonCarouselController.nextPage(),
                             child: Text('→', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize:20,),),
                           ),
                         ),
                       ],
                     ),
                   ],
                 ),
               ),



                SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top:30.0, left: 20.0, right: 20.0),
                      child: Text("Recommended", style: TextStyle(color: Colors.black87, fontSize: 18.0, fontWeight: FontWeight.bold, fontFamily: 'Hellix'),),
                    ),

                    Container(
                      padding: EdgeInsets.only(top:30.0, left: 20.0, right: 20.0),
                      child: Text( "See All", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.deepOrange, fontFamily: 'Hellix'),),
                    ),

                  ],
                ),

                SizedBox(height: 20,),


                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: false,
                    aspectRatio: 2.0,
                    height: 300,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    scrollDirection: Axis.vertical,
                    onPageChanged: (index, context){
                      objectvalue =index;
                      setState(() {});
                    },

                  ),
                  items: objectList.map((e) =>  Container(
                    height: 200,
                    width:300,
                    margin: EdgeInsets.symmetric(vertical: 5.0),
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
                        height: 200,
                        child:Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              Container(
                                padding: EdgeInsets.only(top: 25),
                                child:Image.asset('assets/images/Muffins copy.png', height: 120, width: 120, fit: BoxFit.fill),
                              ),

                              Container(
                                padding: EdgeInsets.only( top: 25),

                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    Text( "Breakfast", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.cyan, fontFamily: 'Hellix'),),

                                    Text( "Blueberry Muffins", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black87, fontFamily: 'Hellix'),),

                                    Container(
                                        child: RatingBar.builder(
                                          initialRating: 5,
                                          maxRating: 1,
                                          itemCount: 5,
                                          itemSize: 10.0,
                                          itemBuilder: (context, _) => Icon(Icons.star, color: Colors.deepOrange,size: 4 ),
                                          onRatingUpdate: (rating) => setState(() {
                                            this.rating = rating;
                                          }

                                          ),

                                        )

                                    ),


                                    Container(
                                      child: Text( "120 Calories", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.deepOrange, fontFamily: 'Hellix'),),


                                    ),

                                    Container(
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          IconButton(icon: Icon(FontAwesomeIcons.clock, color: Colors.grey.shade400, size: 10),onPressed: () {},),
                                          Text( "10 mins", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),
                                          IconButton(icon: Icon(FontAwesomeIcons.bellConcierge, color: Colors.grey.shade400, size: 10),onPressed: () {},),
                                          Text( "1 Serving", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),

                                        ],
                                      ),

                                    ),

                                  ],
                                ),

                              ),

                              Container(

                                child: IconButton(icon: Icon(FontAwesomeIcons.heart, color: Colors.grey.shade400, size: 25),onPressed: () {},),
                              ),

                            ],
                          ),
                        ),

                      ),
                    ),
                  )).toList()
                ),
              ],
            ),]
        ),
      ),
    );
  }
}
