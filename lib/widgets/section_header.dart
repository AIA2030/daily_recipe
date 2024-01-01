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
    return
      Container(
    padding: EdgeInsets.all(10),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              IconButton (icon: Icon(FontAwesomeIcons.barsStaggered, color: Colors.black87, size: 25,), onPressed: () {},),

              Spacer(),

              IconButton(icon: Icon(Icons.notifications_none_outlined, color: Colors.black87, size: 25),onPressed: () {},),


            ],
          ),
      );

  }
}
