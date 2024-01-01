import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VerticalScroll extends StatefulWidget {
  const VerticalScroll({super.key});

  @override
  State<VerticalScroll> createState() => _VerticalScrollState();
}

class _VerticalScrollState extends State<VerticalScroll> {
  double rating =0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
    child: Container(
      padding: EdgeInsets.all(10),

      child: Column(
          children: [
            Card(
              color: Colors.grey.shade50,
              clipBehavior: Clip.antiAlias,
              child:Padding(
                padding: EdgeInsets.all(5),
                child:Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      padding: EdgeInsets.all(5),
                      height: 70,
                      width: 100,
                      child:Image.asset('assets/images/Muffins copy.png', fit: BoxFit.fill),
                    ),

                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Text( "Breakfast", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.cyan, fontFamily: 'Hellix'),),


                            ],
                          ),

                          SizedBox(height: 5,),

                          Text( "Blueberry Muffins", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black87, fontFamily: 'Hellix'),),

                          SizedBox(height: 5,),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              RatingBar.builder(
                                initialRating: 3,
                                maxRating: 1,
                                itemCount: 5,
                                itemSize: 15.0,
                                itemBuilder: (context, _) => Icon(Icons.star_rounded, color: Colors.deepOrange,size: 4 ),
                                onRatingUpdate: (rating) => setState(() {
                                  this.rating = rating;
                                }

                                ),

                              ),

                              SizedBox(width: 20,),

                              Text( "120 Calories", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.deepOrange, fontFamily: 'Hellix'),),

                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child:Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,

                                  children: [
                                    IconButton(icon: Icon(FontAwesomeIcons.clock, color: Colors.grey.shade400, size: 15),onPressed: () {},),
                                    Text( "10 mins", style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),
                                    IconButton(icon: Icon(FontAwesomeIcons.bellConcierge, color: Colors.grey.shade400, size: 15),onPressed: () {},),
                                    Text( "1 Serving", style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),

                                  ],
                                ),
                              ),

                            ],
                          ),

                        ],
                      ),

                    ),

                    SizedBox(width: 33,),

                    Container(

                      child: IconButton(icon: Icon(FontAwesomeIcons.heart, color: Colors.grey.shade400, size: 20),onPressed: () {},),

                    ),
                  ],
                ),
              ),
            ),

            SizedBox( height: 20,),

            Card(
              color: Colors.grey.shade50,
              clipBehavior: Clip.antiAlias,
              child:Padding(
                padding: EdgeInsets.all(5),
                child:Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      padding: EdgeInsets.all(5),
                      height: 70,
                      width: 100,
                      child:Image.asset('assets/images/detail_GlazedSalmon_2 copy.png', fit: BoxFit.fill),
                    ),

                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Text( "Breakfast", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.cyan, fontFamily: 'Hellix'),),


                            ],
                          ),

                          SizedBox(height: 5,),

                          Text( "Glazed Salmon", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black87, fontFamily: 'Hellix'),),

                          SizedBox(height: 5,),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              RatingBar.builder(
                                initialRating: 5,
                                maxRating: 1,
                                itemCount: 5,
                                itemSize: 15.0,
                                itemBuilder: (context, _) => Icon(Icons.star_rounded, color: Colors.deepOrange,size: 4 ),
                                onRatingUpdate: (rating) => setState(() {
                                  this.rating = rating;
                                }

                                ),

                              ),

                              SizedBox(width: 20,),

                              Text( "280 Calories", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.deepOrange, fontFamily: 'Hellix'),),

                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child:Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,

                                  children: [
                                    IconButton(icon: Icon(FontAwesomeIcons.clock, color: Colors.grey.shade400, size: 15),onPressed: () {},),
                                    Text( "45 mins", style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),
                                    IconButton(icon: Icon(FontAwesomeIcons.bellConcierge, color: Colors.grey.shade400, size: 15),onPressed: () {},),
                                    Text( "1 Serving", style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),

                                  ],
                                ),
                              ),

                            ],
                          ),

                        ],
                      ),

                    ),

                    SizedBox(width: 30,),

                    Container(

                      child: IconButton(icon: Icon(FontAwesomeIcons.heart, color: Colors.grey.shade400, size: 20),onPressed: () {},),

                    ),
                  ],
                ),
              ),
            ),

            SizedBox( height: 20,),

            Card(
              color: Colors.grey.shade50,
              clipBehavior: Clip.antiAlias,
              child:Padding(
                padding: EdgeInsets.all(5),
                child:Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      // padding: EdgeInsets.all(5),
                      height: 70,
                      width: 100,
                      child:Image.asset('assets/images/460x533_ChickenThighs_2 copy.png', fit: BoxFit.fill),
                    ),

                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Text( "Breakfast", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.cyan, fontFamily: 'Hellix'),),


                            ],
                          ),

                          SizedBox(height: 5,),

                          Text( "Asian Glazed Chicken Thighs", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black87, fontFamily: 'Hellix'),),

                          SizedBox(height: 5,),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              RatingBar.builder(
                                initialRating: 5,
                                maxRating: 1,
                                itemCount: 5,
                                itemSize: 15.0,
                                itemBuilder: (context, _) => Icon(Icons.star_rounded, color: Colors.deepOrange,size: 4 ),
                                onRatingUpdate: (rating) => setState(() {
                                  this.rating = rating;
                                }

                                ),

                              ),

                              SizedBox(width: 20,),

                              Text( "280 Calories", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.deepOrange, fontFamily: 'Hellix'),),

                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child:Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,

                                  children: [
                                    IconButton(icon: Icon(FontAwesomeIcons.clock, color: Colors.grey.shade400, size: 15),onPressed: () {},),
                                    Text( "45 mins", style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),
                                    IconButton(icon: Icon(FontAwesomeIcons.bellConcierge, color: Colors.grey.shade400, size: 15),onPressed: () {},),
                                    Text( "1 Serving", style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),

                                  ],
                                ),
                              ),

                            ],
                          ),

                        ],
                      ),

                    ),

                    // SizedBox(width: 5,),

                    Container(

                      child: IconButton(icon: Icon(FontAwesomeIcons.heart, color: Colors.grey.shade400, size: 20),onPressed: () {},),

                    ),
                  ],
                ),
              ),
            ),

            SizedBox( height: 20,),

            Card(
              color: Colors.grey.shade50,
              clipBehavior: Clip.antiAlias,
              child:Padding(
                padding: EdgeInsets.all(5),
                child:Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      padding: EdgeInsets.all(5),
                      height: 70,
                      width: 100,
                      child:Image.asset('assets/images/Muffins copy.png', fit: BoxFit.fill),
                    ),

                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Text( "Breakfast", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.cyan, fontFamily: 'Hellix'),),


                            ],
                          ),

                          SizedBox(height: 5,),

                          Text( "Blueberry Muffins", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black87, fontFamily: 'Hellix'),),

                          SizedBox(height: 5,),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              RatingBar.builder(
                                initialRating: 3,
                                maxRating: 1,
                                itemCount: 5,
                                itemSize: 15.0,
                                itemBuilder: (context, _) => Icon(Icons.star_rounded, color: Colors.deepOrange,size: 4 ),
                                onRatingUpdate: (rating) => setState(() {
                                  this.rating = rating;
                                }

                                ),

                              ),

                              SizedBox(width: 20,),

                              Text( "120 Calories", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.deepOrange, fontFamily: 'Hellix'),),

                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child:Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,

                                  children: [
                                    IconButton(icon: Icon(FontAwesomeIcons.clock, color: Colors.grey.shade400, size: 15),onPressed: () {},),
                                    Text( "10 mins", style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),
                                    IconButton(icon: Icon(FontAwesomeIcons.bellConcierge, color: Colors.grey.shade400, size: 15),onPressed: () {},),
                                    Text( "1 Serving", style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),

                                  ],
                                ),
                              ),

                            ],
                          ),

                        ],
                      ),

                    ),

                    SizedBox(width: 33,),

                    Container(

                      child: IconButton(icon: Icon(FontAwesomeIcons.heart, color: Colors.grey.shade400, size: 20),onPressed: () {},),

                    ),
                  ],
                ),
              ),
            ),

            SizedBox( height: 20,),

            Card(
              color: Colors.grey.shade50,
              clipBehavior: Clip.antiAlias,
              child:Padding(
                padding: EdgeInsets.all(5),
                child:Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      padding: EdgeInsets.all(5),
                      height: 70,
                      width: 100,
                      child:Image.asset('assets/images/detail_GlazedSalmon_2 copy.png', fit: BoxFit.fill),
                    ),

                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Text( "Breakfast", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.cyan, fontFamily: 'Hellix'),),


                            ],
                          ),

                          SizedBox(height: 5,),

                          Text( "Glazed Salmon", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black87, fontFamily: 'Hellix'),),

                          SizedBox(height: 5,),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              RatingBar.builder(
                                initialRating: 5,
                                maxRating: 1,
                                itemCount: 5,
                                itemSize: 15.0,
                                itemBuilder: (context, _) => Icon(Icons.star_rounded, color: Colors.deepOrange,size: 4 ),
                                onRatingUpdate: (rating) => setState(() {
                                  this.rating = rating;
                                }

                                ),

                              ),

                              SizedBox(width: 20,),

                              Text( "280 Calories", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.deepOrange, fontFamily: 'Hellix'),),

                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child:Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,

                                  children: [
                                    IconButton(icon: Icon(FontAwesomeIcons.clock, color: Colors.grey.shade400, size: 15),onPressed: () {},),
                                    Text( "45 mins", style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),
                                    IconButton(icon: Icon(FontAwesomeIcons.bellConcierge, color: Colors.grey.shade400, size: 15),onPressed: () {},),
                                    Text( "1 Serving", style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),

                                  ],
                                ),
                              ),

                            ],
                          ),

                        ],
                      ),

                    ),

                    SizedBox(width: 30,),

                    Container(

                      child: IconButton(icon: Icon(FontAwesomeIcons.heart, color: Colors.grey.shade400, size: 20),onPressed: () {},),

                    ),
                  ],
                ),
              ),
            ),

            SizedBox( height: 20,),

            Card(
              color: Colors.grey.shade50,
              clipBehavior: Clip.antiAlias,
              child:Padding(
                padding: EdgeInsets.all(5),
                child:Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      // padding: EdgeInsets.all(5),
                      height: 70,
                      width: 100,
                      child:Image.asset('assets/images/460x533_ChickenThighs_2 copy.png', fit: BoxFit.fill),
                    ),

                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Text( "Breakfast", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.cyan, fontFamily: 'Hellix'),),


                            ],
                          ),

                          SizedBox(height: 5,),

                          Text( "Asian Glazed Chicken Thighs", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black87, fontFamily: 'Hellix'),),

                          SizedBox(height: 5,),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              RatingBar.builder(
                                initialRating: 5,
                                maxRating: 1,
                                itemCount: 5,
                                itemSize: 15.0,
                                itemBuilder: (context, _) => Icon(Icons.star_rounded, color: Colors.deepOrange,size: 4 ),
                                onRatingUpdate: (rating) => setState(() {
                                  this.rating = rating;
                                }

                                ),

                              ),

                              SizedBox(width: 20,),

                              Text( "280 Calories", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.deepOrange, fontFamily: 'Hellix'),),

                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child:Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,

                                  children: [
                                    IconButton(icon: Icon(FontAwesomeIcons.clock, color: Colors.grey.shade400, size: 15),onPressed: () {},),
                                    Text( "45 mins", style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),
                                    IconButton(icon: Icon(FontAwesomeIcons.bellConcierge, color: Colors.grey.shade400, size: 15),onPressed: () {},),
                                    Text( "1 Serving", style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),

                                  ],
                                ),
                              ),

                            ],
                          ),

                        ],
                      ),

                    ),

                    // SizedBox(width: 5,),

                    Container(

                      child: IconButton(icon: Icon(FontAwesomeIcons.heart, color: Colors.grey.shade400, size: 20),onPressed: () {},),

                    ),
                  ],
                ),
              ),
            ),
          ]
      ),)
    );

  }
}
