import 'package:daily_recipe/pages/main_pages/home_page.dart';
import 'package:daily_recipe/pages/main_pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  static const String KEYLOGIN ="login";

  @override

  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    var PrefrenceServices = await SharedPreferences.getInstance();
    var isLoggedIn =PrefrenceServices.getBool(KEYLOGIN);

    await Future.delayed(Duration(milliseconds: 2500), (){

      if(isLoggedIn!= null){
        if(isLoggedIn){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));
        }
        else{
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LogIn()));
        }
      }else{
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LogIn()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[

                Container(

                  child: Image.asset('assets/images/Logo (1).png', height: 222, width: 424, fit: BoxFit.fill),
                ),

                SizedBox(height: 40,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text("Cooking Done ", style: TextStyle(color: Colors.deepOrange, fontSize: 25.0, fontWeight: FontWeight.bold, fontFamily: 'Hellix'),),
                    ),

                    Container(
                      child: Text( "The Easy Way.", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Hellix'),),
                    ),

                  ],
                ),

              ]
          )
      ),
    );
  }
}
