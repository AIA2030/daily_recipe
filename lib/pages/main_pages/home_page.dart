import 'package:daily_recipe/pages/login_pages/sign_in.dart';
import 'package:daily_recipe/pages/main_pages/login_page.dart';
import 'package:daily_recipe/pages/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(

        leading: IconButton (icon: Icon(Icons.menu_outlined, color: Colors.black87, size: 35,), onPressed: () {

        },),



        actions: [
          IconButton(icon: Icon(Icons.notifications_none_outlined, color: Colors.black87, size: 35),onPressed: () {},),
        ],
      ),

      body: SafeArea(
        child: ListView(
            padding: EdgeInsets.all(40),

            children: [Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Container(

                  child: Image.asset('assets/images/Logo (1).png', height: 222, width: 424, fit: BoxFit.fill),
                ),

                SizedBox(width: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text("Cooking Done ", style: TextStyle(color: Colors.deepOrange, fontSize: 18.0, fontWeight: FontWeight.bold),),
                    ),

                    Container(
                      child: Text( "The Easy Way.", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),),
                    ),

                  ],
                ),

                SizedBox(width: 20,),

                Center(child:Container(
                  height: 50.0,
                  width: 315,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(15.0)),

                    child: InkWell(
                      onTap: () async {
                        var PrefrenceServices = await SharedPreferences.getInstance();
                        PrefrenceServices.remove(SplashScreenState.KEYLOGIN);
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignIn()));

                      },

                      child: Center(
                        child: Text("Log Out", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.0, fontFamily: 'Hellix')),
                      ),
                    ),
                  ),
                ),)
              ],
            ),]
        ),
      ),
    );
  }
}
