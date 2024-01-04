import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchBarPage extends StatefulWidget {
  const SearchBarPage({super.key});

  @override
  State<SearchBarPage> createState() => _SearchBarPageState();
}

class _SearchBarPageState extends State<SearchBarPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[

      Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade200,

          ),
          height: 40,
          width: 280,

          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              IconButton(icon: Icon(Icons.search_outlined, color: Colors.grey.shade400, size: 25),onPressed: () {},),
              Text( "Search for recipes", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.grey.shade400, fontFamily: 'Hellix'),),
            ],
          )
      ),

      Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade200,

        ),
        height: 40,
        width: 40,

        child:IconButton(icon: Icon(FontAwesomeIcons.sliders, color: Colors.black87, size: 20),onPressed: () {},),

      ),

      ],
    );


  }
}
