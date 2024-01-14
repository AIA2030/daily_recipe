import 'dart:convert';

import 'package:daily_recipe/models/ads.dart';
import 'package:daily_recipe/models/ads.model.dart';
import 'package:daily_recipe/pages/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';


import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    var preference = await SharedPreferences.getInstance();

    GetIt.I.registerSingleton<SharedPreferences>(preference);
  } catch (e) {
    print(
        '=========================Error In init Prefrences ${e}========================');
  }
  // runApp(const MyApp());
  // runApp(BlocProvider<AdsBloc>(create: (context)=> AdsBloc(), child:const MyApp()));
  runApp(ChangeNotifierProvider(create: (context)=> AdsProvider(), child:const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Daily Recipe',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         scaffoldBackgroundColor: Colors.black,
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//         useMaterial3: true,
//       ),
//       home: MultiProvider(
//         providers: [
//           Provider<AdsCubit>(
//             create: (_) => AdsCubit(),
//           ),
//         ],
//         child: BlocCarouselPage(),
//       ),
//     );
//   }
// }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Recipe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Daily Recipe'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SplashScreen());
  }
}

