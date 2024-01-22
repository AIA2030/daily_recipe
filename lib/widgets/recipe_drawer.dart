import 'package:daily_recipe/pages/main_pages/home_page.dart';
import 'package:daily_recipe/provider/app_auth.provider.dart';
import 'package:daily_recipe/widgets/recipe_header_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  String selectedPage ='';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget> [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors. white,
            ),

           child: HeaderDrawer(),
            
            
          ),

          ListTile(
            leading: const Icon(Icons.home, color: Colors.grey, size: 25),
            title: const Text('Home', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.grey, fontFamily: 'Hellix'),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              setState(() {
                selectedPage ='Home';
              });
            },
          ),

          ListTile(
            leading: const Icon(Icons.favorite_outline, color: Colors.grey, size: 25),
            title: const Text('Favorites', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.grey, fontFamily: 'Hellix'),),
            onTap: (){
              Navigator.pop(context);
              setState(() {
                selectedPage ='Favorites';
              });
            },
          ),

          ListTile(
            leading: const Icon(Icons.play_arrow_outlined, color: Colors.grey, size: 25),
            title: const Text('Recently View', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.grey, fontFamily: 'Hellix'),),
            onTap: (){
              Navigator.pop(context);
              setState(() {
                selectedPage ='Recently View';
              });
            },
          ),

          ListTile(
            leading: const Icon(Icons.settings_rounded, color: Colors.grey, size: 25),
            title: const Text('Settings', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.grey, fontFamily: 'Hellix'),),
            onTap: (){
              Navigator.pop(context);
              setState(() {
                selectedPage ='Settings';
              });
            },
          ),

          ListTile(
            leading: const Icon(Icons.info_outline_rounded, color: Colors.grey, size: 25),
            title: const Text('About Us', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.grey, fontFamily: 'Hellix'),),
            onTap: (){
              Navigator.pop(context);
              setState(() {
                selectedPage ='About Us';
              });
            },
          ),

          ListTile(
            leading: const Icon(Icons.help_outline_outlined, color: Colors.grey, size: 25),
            title: const Text('Help', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.grey, fontFamily: 'Hellix'),),
            onTap: (){
              Navigator.pop(context);
              setState(() {
                selectedPage ='Help';
              });
            },
          ),

          ListTile(
            leading: const Icon(Icons.output_outlined, color: Colors.grey, size: 25),
            title: const Text('Sign Out', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.grey, fontFamily: 'Hellix'),),
            onTap: (){
              Provider.of<AppAuthProvider>(context, listen: false).signOut(context);
              setState(() {
                selectedPage ='Sign Out';
              });
            },
          ),


        ],
      ),
    );

  }
}
