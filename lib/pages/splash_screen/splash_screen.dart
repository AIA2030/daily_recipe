import 'dart:async';
import 'package:daily_recipe/pages/main_pages/home_page.dart';
import 'package:daily_recipe/pages/main_pages/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  StreamSubscription<User?>? _listener;
  @override
  void initState() {
    initSplash();
    super.initState();
  }

  void initSplash() async {
    await Future.delayed(const Duration(seconds: 1));
    _listener = FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user == null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => LogIn()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => HomePage()));
      }
    });
  }

  @override
  void dispose() {
    _listener?.cancel();
    super.dispose();
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
