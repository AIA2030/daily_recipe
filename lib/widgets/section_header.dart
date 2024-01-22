import 'package:daily_recipe/widgets/recipe_drawer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton (icon: Icon(FontAwesomeIcons.barsStaggered, color: Colors.black87, size: 25,), onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => DrawerPage()));
          },),

          Spacer(),

          IconButton(icon: Icon(Icons.notifications_none_outlined, color: Colors.black87, size: 25),onPressed: () {
          },),
          // drawer: DrawerPage();

        ],
      ),
    );

  }
}
