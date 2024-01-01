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
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[

            Card(
              color: Colors.grey.shade50,
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.all(10),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom:70.0, left:5.0),
                          child: IconButton(icon: Icon(FontAwesomeIcons.heart, color: Colors.grey.shade400, size: 25),onPressed: () {},),

                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          height: 90,
                          width: 140,

                          child:  Image.asset('assets/images/frensh toast 2 copy.png',fit: BoxFit.fill),
                        ),
                      ],
                    ),

                  ),

                  Container(
                      padding: EdgeInsets.only( left: 15.0, right: 00.0),

                      child: Text( "Breakfast", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.cyan, fontFamily: 'Hellix'),),

                  ),

                  SizedBox(height: 5,),

                  Container(
                    padding: EdgeInsets.only( left: 15.0, right: 00.0),

                    child: Text( "French Toast with \nBerries", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black87, fontFamily: 'Hellix'),),

                  ),

                  SizedBox(height: 5,),

                  Container(
                      padding: EdgeInsets.only( left: 12.0, right: 00.0),
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
                    padding: EdgeInsets.only( left: 15.0, right: 00.0),
                    child: Text( "120 Calories", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.deepOrange, fontFamily: 'Hellix'),),


                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                   children:[
                     Container(
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           IconButton(icon: Icon(FontAwesomeIcons.clock, color: Colors.grey.shade400, size: 10),onPressed: () {},),
                           Text( "10 mins", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),

                         ],
                       ),


                     ),
                     Container(
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           IconButton(icon: Icon(FontAwesomeIcons.bellConcierge, color: Colors.grey.shade400, size: 10),onPressed: () {},),
                           Text( "1 Serving", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),
                         ],
                       ),


                     ),
                   ]
                 ),

                ],
              ),

            ),


            SizedBox(width: 20,),


            Card(
              color: Colors.grey.shade50,
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.all(10),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom:70.0, left:5.0),
                          child: IconButton(icon: Icon(FontAwesomeIcons.heart, color: Colors.grey.shade400, size: 25),onPressed: () {},),

                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          height: 90,
                          width: 140,

                          child:  Image.asset('assets/images/Cinnamon Toaast copy.png',fit: BoxFit.fill),
                        ),
                      ],
                    ),

                  ),

                  Container(
                    padding: EdgeInsets.only( left: 15.0, right: 00.0),

                    child: Text( "Breakfast", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.cyan, fontFamily: 'Hellix'),),

                  ),

                  SizedBox(height: 5,),

                  Container(
                    padding: EdgeInsets.only( left: 15.0, right: 00.0),

                    child: Text( "Brown Sugar \nCinnamon Toast", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black87, fontFamily: 'Hellix'),),

                  ),

                  SizedBox(height: 5,),

                  Container(
                      padding: EdgeInsets.only( left: 12.0, right: 00.0),
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
                    padding: EdgeInsets.only( left: 15.0, right: 00.0),
                    child: Text( "135 Calories", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.deepOrange, fontFamily: 'Hellix'),),


                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(icon: Icon(FontAwesomeIcons.clock, color: Colors.grey.shade400, size: 10),onPressed: () {},),
                              Text( "15 mins", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),

                            ],
                          ),


                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(icon: Icon(FontAwesomeIcons.bellConcierge, color: Colors.grey.shade400, size: 10),onPressed: () {},),
                              Text( "1 Serving", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),
                            ],
                          ),


                        ),
                      ]
                  ),

                ],
              ),

            ),

            SizedBox(width: 20,),

            Card(
              color: Colors.grey.shade50,
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.all(10),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom:70.0, left:5.0),
                          child: IconButton(icon: Icon(FontAwesomeIcons.heart, color: Colors.grey.shade400, size: 25),onPressed: () {},),

                        ),
                        Container(
                          padding: EdgeInsets.all(17),
                          height: 130,
                          width: 140,

                          child:  Image.asset('assets/images/Muffins copy.png',fit: BoxFit.fill),
                        ),
                      ],
                    ),

                  ),

                  Container(
                    padding: EdgeInsets.only( left: 15.0, right: 00.0),

                    child: Text( "Breakfast", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.cyan, fontFamily: 'Hellix'),),

                  ),

                  SizedBox(height: 5,),

                  Container(
                    padding: EdgeInsets.only( left: 15.0, right: 00.0),

                    child: Text( "Blueberry Muffins", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black87, fontFamily: 'Hellix'),),

                  ),

                  SizedBox(height: 5,),

                  Container(
                      padding: EdgeInsets.only( left: 12.0, right: 00.0),
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
                    padding: EdgeInsets.only( left: 15.0, right: 00.0),
                    child: Text( "135 Calories", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.deepOrange, fontFamily: 'Hellix'),),


                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(icon: Icon(FontAwesomeIcons.clock, color: Colors.grey.shade400, size: 10),onPressed: () {},),
                              Text( "15 mins", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),

                            ],
                          ),


                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(icon: Icon(FontAwesomeIcons.bellConcierge, color: Colors.grey.shade400, size: 10),onPressed: () {},),
                              Text( "1 Serving", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),
                            ],
                          ),


                        ),
                      ]
                  ),

                ],
              ),

            ),

            SizedBox(width: 20,),


            Card(
              color: Colors.grey.shade50,
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.all(10),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom:70.0, left:5.0),
                          child: IconButton(icon: Icon(FontAwesomeIcons.heart, color: Colors.grey.shade400, size: 25),onPressed: () {},),

                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          height: 90,
                          width: 140,

                          child:  Image.asset('assets/images/frensh toast 2 copy.png',fit: BoxFit.fill),
                        ),
                      ],
                    ),

                  ),

                  Container(
                    padding: EdgeInsets.only( left: 15.0, right: 00.0),

                    child: Text( "Breakfast", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.cyan, fontFamily: 'Hellix'),),

                  ),

                  SizedBox(height: 5,),

                  Container(
                    padding: EdgeInsets.only( left: 15.0, right: 00.0),

                    child: Text( "French Toast with \nBerries", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black87, fontFamily: 'Hellix'),),

                  ),

                  SizedBox(height: 5,),

                  Container(
                      padding: EdgeInsets.only( left: 12.0, right: 00.0),
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
                    padding: EdgeInsets.only( left: 15.0, right: 00.0),
                    child: Text( "120 Calories", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.deepOrange, fontFamily: 'Hellix'),),


                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(icon: Icon(FontAwesomeIcons.clock, color: Colors.grey.shade400, size: 10),onPressed: () {},),
                              Text( "10 mins", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),

                            ],
                          ),


                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(icon: Icon(FontAwesomeIcons.bellConcierge, color: Colors.grey.shade400, size: 10),onPressed: () {},),
                              Text( "1 Serving", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),
                            ],
                          ),


                        ),
                      ]
                  ),

                ],
              ),

            ),


            SizedBox(width: 20,),


            Card(
              color: Colors.grey.shade50,
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.all(10),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom:70.0, left:5.0),
                          child: IconButton(icon: Icon(FontAwesomeIcons.heart, color: Colors.grey.shade400, size: 25),onPressed: () {},),

                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          height: 90,
                          width: 140,

                          child:  Image.asset('assets/images/Cinnamon Toaast copy.png',fit: BoxFit.fill),
                        ),
                      ],
                    ),

                  ),

                  Container(
                    padding: EdgeInsets.only( left: 15.0, right: 00.0),

                    child: Text( "Breakfast", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.cyan, fontFamily: 'Hellix'),),

                  ),

                  SizedBox(height: 5,),

                  Container(
                    padding: EdgeInsets.only( left: 15.0, right: 00.0),

                    child: Text( "Brown Sugar \nCinnamon Toast", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black87, fontFamily: 'Hellix'),),

                  ),

                  SizedBox(height: 5,),

                  Container(
                      padding: EdgeInsets.only( left: 12.0, right: 00.0),
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
                    padding: EdgeInsets.only( left: 15.0, right: 00.0),
                    child: Text( "135 Calories", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.deepOrange, fontFamily: 'Hellix'),),


                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(icon: Icon(FontAwesomeIcons.clock, color: Colors.grey.shade400, size: 10),onPressed: () {},),
                              Text( "15 mins", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),

                            ],
                          ),


                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(icon: Icon(FontAwesomeIcons.bellConcierge, color: Colors.grey.shade400, size: 10),onPressed: () {},),
                              Text( "1 Serving", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),
                            ],
                          ),


                        ),
                      ]
                  ),

                ],
              ),

            ),

            SizedBox(width: 20,),


            Card(
              color: Colors.grey.shade50,
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.all(10),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom:70.0, left:5.0),
                          child: IconButton(icon: Icon(FontAwesomeIcons.heart, color: Colors.grey.shade400, size: 25),onPressed: () {},),

                        ),
                        Container(
                          padding: EdgeInsets.all(17),
                          height: 130,
                          width: 140,

                          child:  Image.asset('assets/images/Muffins copy.png',fit: BoxFit.fill),
                        ),
                      ],
                    ),

                  ),

                  Container(
                    padding: EdgeInsets.only( left: 15.0, right: 00.0),

                    child: Text( "Breakfast", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.cyan, fontFamily: 'Hellix'),),

                  ),

                  SizedBox(height: 5,),

                  Container(
                    padding: EdgeInsets.only( left: 15.0, right: 00.0),

                    child: Text( "Blueberry Muffins", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black87, fontFamily: 'Hellix'),),

                  ),

                  SizedBox(height: 5,),

                  Container(
                      padding: EdgeInsets.only( left: 12.0, right: 00.0),
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
                    padding: EdgeInsets.only( left: 15.0, right: 00.0),
                    child: Text( "135 Calories", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.deepOrange, fontFamily: 'Hellix'),),


                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(icon: Icon(FontAwesomeIcons.clock, color: Colors.grey.shade400, size: 10),onPressed: () {},),
                              Text( "15 mins", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),

                            ],
                          ),


                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(icon: Icon(FontAwesomeIcons.bellConcierge, color: Colors.grey.shade400, size: 10),onPressed: () {},),
                              Text( "1 Serving", style: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),
                            ],
                          ),


                        ),
                      ]
                  ),

                ],
              ),

            ),


          ],
        ),
      ),
    );

  }
}
