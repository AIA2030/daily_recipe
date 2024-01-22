import 'package:daily_recipe/pages/main_pages/home_page.dart';
import 'package:flutter/material.dart';

class HeaderDrawer extends StatefulWidget {
  const HeaderDrawer({super.key});

  @override
  State<HeaderDrawer> createState() => _HeaderDrawerState();
}

class _HeaderDrawerState extends State<HeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
    Container(
    alignment: Alignment.center,
    child:  Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget> [
    Container(
      padding: EdgeInsets.only(top:30.0),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
    child: Center(
    child:  ClipRRect(
    child: Image.network('https://cdn.pixabay.com/photo/2016/11/29/05/46/young-woman-1867618_1280.jpg', fit: BoxFit.cover, width: 80, height: 80,),
    clipBehavior: Clip.antiAlias,
    borderRadius: BorderRadius.all(Radius.circular(100)),

    ),
    ),
    ),

    SizedBox(width: 20,),

     Container(
       padding: EdgeInsets.only(top:40.0),
       child: Column(
         children: [
           Text('Emma Holmes', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black87, fontFamily: 'Hellix')),

           SizedBox(height: 5,),

           Text('View Profile', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix')),

         ],
       ),
     ),

      SizedBox(width: 90,),

      Container(
        padding: EdgeInsets.only(top:40.0),
          child:IconButton(icon: Icon(Icons.close, color: Colors.black87, size: 30),onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (context) => HomePage()));

          },),

      ),
    ],
    // accountName: Row(
    //   children: <Widget>[
    //     CircleAvatar(
    //       backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2016/11/29/05/46/young-woman-1867618_1280.jpg', ),
    //     ),
    //     SizedBox(width: 20,),
    //     Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: <Widget>[
    //         Text('Emma Holmes', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black87, fontFamily: 'Hellix')),
    //
    //         SizedBox(height: 5,),
    //
    //         Text('View Profile', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500, color: Colors.grey, fontFamily: 'Hellix')),
    //       ],
    //     ),
    //   ],
    // ),
    ),
    ),
      ],
    );
  }
}
