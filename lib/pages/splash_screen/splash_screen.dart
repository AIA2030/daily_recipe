import 'package:daily_recipe/pages/main_pages/bloc_carousel.dart';
import 'package:daily_recipe/pages/main_pages/home_page.dart';
import 'package:daily_recipe/pages/main_pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    initSplash();
    super.initState();
  }

  void initSplash() async {
    await Future.delayed(const Duration(seconds: 3));
    if (GetIt.I.get<SharedPreferences>().getBool('isSignIn') ?? false) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => HomePage()));
      // go to home page
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => BlocCarouselPage()));
      // go to login page
    }
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

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//
//    // static const String KEYLOGIN ="login";
//
//   @override
//
//   void initState() {
//     initSplash();
//     super.initState();
//   }
//
//   void initSplash()async{
//     await Future.delayed(const Duration(milliseconds: 2500));
//     // var isLogin =PrefrenceServices.getBool(KEYLOGIN);
//       if(GetIt.I.get<SharedPreferences>().getBool('isLogin') ??false) {
//          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomePage()));
//         } else{
//           Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LogIn()));
//         }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children:[
//
//                 Container(
//
//                   child: Image.asset('assets/images/Logo (1).png', height: 222, width: 424, fit: BoxFit.fill),
//                 ),
//
//                 SizedBox(height: 40,),
//
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Container(
//                       child: Text("Cooking Done ", style: TextStyle(color: Colors.deepOrange, fontSize: 25.0, fontWeight: FontWeight.bold, fontFamily: 'Hellix'),),
//                     ),
//
//                     Container(
//                       child: Text( "The Easy Way.", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Hellix'),),
//                     ),
//
//                   ],
//                 ),
//
//               ]
//           )
//       ),
//     );
//   }
// }
