import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HerzontialScroll extends StatefulWidget {
  const HerzontialScroll({super.key});

  @override
  State<HerzontialScroll> createState() => _HerzontialScrollState();
}

class _HerzontialScrollState extends State<HerzontialScroll> {
  double rating =0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        // padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[

            Card(
              color: Colors.grey.shade50,
              clipBehavior: Clip.antiAlias,
              child:Padding(
                padding: EdgeInsets.only(top:15.0,bottom:20.0,left: 15.0, right: 0.0),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(bottom:70.0,),
                            alignment: Alignment.topRight,
                            child:Icon(FontAwesomeIcons.heart, color: Colors.grey.shade400, size: 25)

                          ),
                          Transform.translate(
                            offset:Offset(0, 0),
                            child:Container(
                            padding: EdgeInsets.all(5),
                            height: 90,
                            width: 140,
                            child:  Image.asset('assets/images/frensh_toast.png',fit: BoxFit.fill),
                          ),)
                        ],
                      ),

                    ),

                    Container(

                      child: Text( "Breakfast", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.cyan, fontFamily: 'Hellix'),),

                    ),

                    SizedBox(height: 5,),

                    Container(

                      child: Text( "French Toast with \nBerries", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black87, fontFamily: 'Hellix'),),

                    ),

                    SizedBox(height: 5,),

                    Container(
                        child: RatingBar.builder(
                          initialRating: 5,
                          maxRating: 1,
                          itemCount: 5,
                          itemSize: 15.0,
                          itemBuilder: (context, _) => Icon(Icons.star, color: Colors.deepOrange,size: 4 ),
                          onRatingUpdate: (rating) => setState(() {
                            this.rating = rating;
                          }

                          ),

                        )

                    ),

                    SizedBox(height: 5,),

                    Container(
                      child: Text( "120 Calories", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.deepOrange, fontFamily: 'Hellix'),),


                    ),

                    SizedBox(height: 5,),

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
                                  Text( "10 mins", style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),

                                ],
                              ),

                              SizedBox(width: 20,),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,

                                children: [
                                  Icon(FontAwesomeIcons.bellConcierge, color: Colors.grey.shade400, size: 12),
                                  SizedBox(width: 5,),
                                  Text( "1 Serving", style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),
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


            SizedBox(width: 20,),

            Card(
              color: Colors.grey.shade50,
              clipBehavior: Clip.antiAlias,
              child:Padding(
                padding: EdgeInsets.only(top:15.0,bottom:20.0,left: 15.0, right: 0.0),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.only(bottom:70.0,),
                              alignment: Alignment.topRight,
                              child:Icon(FontAwesomeIcons.solidHeart, color: Colors.red, size: 25)

                          ),
                          Transform.translate(
                            offset:Offset(0, 0),
                            child:Container(
                              padding: EdgeInsets.all(5),
                              height: 90,
                              width: 140,
                              child:  Image.asset('assets/images/Cinnamon_Toaast.png',fit: BoxFit.fill),
                            ),)
                        ],
                      ),

                    ),

                    Container(

                      child: Text( "Breakfast", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.cyan, fontFamily: 'Hellix'),),

                    ),

                    SizedBox(height: 5,),

                    Container(

                      child: Text( "Brown Sugar \nCinnamon Toast", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black87, fontFamily: 'Hellix'),),

                    ),

                    SizedBox(height: 5,),

                    Container(
                        child: RatingBar.builder(
                          initialRating: 4,
                          maxRating: 1,
                          itemCount: 5,
                          itemSize: 15.0,
                          itemBuilder: (context, _) => Icon(Icons.star, color: Colors.deepOrange,size: 4 ),
                          onRatingUpdate: (rating) => setState(() {
                            this.rating = rating;
                          }

                          ),

                        )

                    ),

                    SizedBox(height: 5,),

                    Container(
                      child: Text( "135 Calories", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.deepOrange, fontFamily: 'Hellix'),),


                    ),

                    SizedBox(height: 5,),

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
                                  Text( "15 mins", style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),

                                ],
                              ),

                              SizedBox(width: 20,),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,

                                children: [
                                  Icon(FontAwesomeIcons.bellConcierge, color: Colors.grey.shade400, size: 12),
                                  SizedBox(width: 5,),
                                  Text( "1 Serving", style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),
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

            SizedBox(width: 20,),

            Card(
              color: Colors.grey.shade50,
              clipBehavior: Clip.antiAlias,
              child:Padding(
                padding: EdgeInsets.only(top:15.0,bottom:20.0,left: 15.0, right: 0.0),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.only(bottom:70.0,),
                              alignment: Alignment.topRight,
                              child:Icon(FontAwesomeIcons.heart, color: Colors.grey.shade400, size: 25)

                          ),
                          Transform.translate(
                            offset:Offset(0, 0),
                            child:Container(
                              padding: EdgeInsets.all(5),
                              height: 90,
                              width: 140,
                              child:  Image.asset('assets/images/Muffins.png',fit: BoxFit.fill),
                            ),)
                        ],
                      ),

                    ),

                    Container(

                      child: Text( "Breakfast", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.cyan, fontFamily: 'Hellix'),),

                    ),

                    SizedBox(height: 5,),

                    Container(

                      child: Text( "Blueberry Muffins", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black87, fontFamily: 'Hellix'),),

                    ),

                    SizedBox(height: 5,),

                    Container(
                        child: RatingBar.builder(
                          initialRating: 3,
                          maxRating: 1,
                          itemCount: 5,
                          itemSize: 15.0,
                          itemBuilder: (context, _) => Icon(Icons.star, color: Colors.deepOrange,size: 4 ),
                          onRatingUpdate: (rating) => setState(() {
                            this.rating = rating;
                          }

                          ),

                        )

                    ),

                    SizedBox(height: 5,),

                    Container(
                      child: Text( "120 Calories", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.deepOrange, fontFamily: 'Hellix'),),


                    ),

                    SizedBox(height: 5,),

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
                                  Text( "10 mins", style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),

                                ],
                              ),

                              SizedBox(width: 20,),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,

                                children: [
                                  Icon(FontAwesomeIcons.bellConcierge, color: Colors.grey.shade400, size: 12),
                                  SizedBox(width: 5,),
                                  Text( "1 Serving", style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),
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

            SizedBox(width: 20,),


            Card(
              color: Colors.grey.shade50,
              clipBehavior: Clip.antiAlias,
              child:Padding(
                padding: EdgeInsets.only(top:15.0,bottom:20.0,left: 15.0, right: 0.0),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.only(bottom:70.0,),
                              alignment: Alignment.topRight,
                              child:Icon(FontAwesomeIcons.heart, color: Colors.grey.shade400, size: 25)

                          ),
                          Transform.translate(
                            offset:Offset(0, 0),
                            child:Container(
                              padding: EdgeInsets.all(5),
                              height: 90,
                              width: 140,
                              child:  Image.asset('assets/images/frensh_toast.png',fit: BoxFit.fill),
                            ),)
                        ],
                      ),

                    ),

                    Container(

                      child: Text( "Breakfast", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.cyan, fontFamily: 'Hellix'),),

                    ),

                    SizedBox(height: 5,),

                    Container(

                      child: Text( "French Toast with \nBerries", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black87, fontFamily: 'Hellix'),),

                    ),

                    SizedBox(height: 5,),

                    Container(
                        child: RatingBar.builder(
                          initialRating: 5,
                          maxRating: 1,
                          itemCount: 5,
                          itemSize: 15.0,
                          itemBuilder: (context, _) => Icon(Icons.star, color: Colors.deepOrange,size: 4 ),
                          onRatingUpdate: (rating) => setState(() {
                            this.rating = rating;
                          }

                          ),

                        )

                    ),

                    SizedBox(height: 5,),

                    Container(
                      child: Text( "120 Calories", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.deepOrange, fontFamily: 'Hellix'),),


                    ),

                    SizedBox(height: 5,),

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
                                  Text( "10 mins", style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),

                                ],
                              ),

                              SizedBox(width: 20,),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,

                                children: [
                                  Icon(FontAwesomeIcons.bellConcierge, color: Colors.grey.shade400, size: 12),
                                  SizedBox(width: 5,),
                                  Text( "1 Serving", style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),
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


            SizedBox(width: 20,),

            Card(
              color: Colors.grey.shade50,
              clipBehavior: Clip.antiAlias,
              child:Padding(
                padding: EdgeInsets.only(top:15.0,bottom:20.0,left: 15.0, right: 0.0),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.only(bottom:70.0,),
                              alignment: Alignment.topRight,
                              child:Icon(FontAwesomeIcons.solidHeart, color: Colors.red, size: 25)

                          ),
                          Transform.translate(
                            offset:Offset(0, 0),
                            child:Container(
                              padding: EdgeInsets.all(5),
                              height: 90,
                              width: 140,
                              child:  Image.asset('assets/images/Cinnamon_Toaast.png',fit: BoxFit.fill),
                            ),)
                        ],
                      ),

                    ),

                    Container(

                      child: Text( "Breakfast", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.cyan, fontFamily: 'Hellix'),),

                    ),

                    SizedBox(height: 5,),

                    Container(

                      child: Text( "Brown Sugar \nCinnamon Toast", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black87, fontFamily: 'Hellix'),),

                    ),

                    SizedBox(height: 5,),

                    Container(
                        child: RatingBar.builder(
                          initialRating: 4,
                          maxRating: 1,
                          itemCount: 5,
                          itemSize: 15.0,
                          itemBuilder: (context, _) => Icon(Icons.star, color: Colors.deepOrange,size: 4 ),
                          onRatingUpdate: (rating) => setState(() {
                            this.rating = rating;
                          }

                          ),

                        )

                    ),

                    SizedBox(height: 5,),

                    Container(
                      child: Text( "135 Calories", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.deepOrange, fontFamily: 'Hellix'),),


                    ),

                    SizedBox(height: 5,),

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
                                  Text( "15 mins", style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),

                                ],
                              ),

                              SizedBox(width: 20,),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,

                                children: [
                                  Icon(FontAwesomeIcons.bellConcierge, color: Colors.grey.shade400, size: 12),
                                  SizedBox(width: 5,),
                                  Text( "1 Serving", style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),
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

            SizedBox(width: 20,),

            Card(
              color: Colors.grey.shade50,
              clipBehavior: Clip.antiAlias,
              child:Padding(
                padding: EdgeInsets.only(top:15.0,bottom:20.0,left: 15.0, right: 0.0),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.only(bottom:70.0,),
                              alignment: Alignment.topRight,
                              child:Icon(FontAwesomeIcons.heart, color: Colors.grey.shade400, size: 25)

                          ),
                          Transform.translate(
                            offset:Offset(0, 0),
                            child:Container(
                              padding: EdgeInsets.only(top:10.0,bottom:10.0,left: 5.0, right: 5.0),
                              height: 120,
                              width: 140,
                              child:  Image.asset('assets/images/Muffins.png',fit: BoxFit.fill),
                            ),)
                        ],
                      ),

                    ),

                    Container(

                      child: Text( "Breakfast", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.cyan, fontFamily: 'Hellix'),),

                    ),

                    SizedBox(height: 5,),

                    Container(

                      child: Text( "Blueberry Muffins", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black87, fontFamily: 'Hellix'),),

                    ),

                    SizedBox(height: 5,),

                    Container(
                        child: RatingBar.builder(
                          initialRating: 3,
                          maxRating: 1,
                          itemCount: 5,
                          itemSize: 15.0,
                          itemBuilder: (context, _) => Icon(Icons.star, color: Colors.deepOrange,size: 4 ),
                          onRatingUpdate: (rating) => setState(() {
                            this.rating = rating;
                          }

                          ),

                        )

                    ),

                    SizedBox(height: 5,),

                    Container(
                      child: Text( "120 Calories", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.deepOrange, fontFamily: 'Hellix'),),


                    ),

                    SizedBox(height: 5,),

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
                                  Text( "10 mins", style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),

                                ],
                              ),

                              SizedBox(width: 20,),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,

                                children: [
                                  Icon(FontAwesomeIcons.bellConcierge, color: Colors.grey.shade400, size: 12),
                                  SizedBox(width: 5,),
                                  Text( "1 Serving", style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),
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


          ],
        ),
      ),
    );

  }
}
