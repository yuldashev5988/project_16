import 'package:flutter/material.dart';
import 'package:project_16/pages/home_page.dart';
import 'package:project_16/pages/intro_page/intro_page.dart';
import 'package:project_16/screens/home_screen.dart';
import 'package:project_16/views/electronicsView.dart';
import 'package:project_16/views/furnitureView.dart';
import 'package:project_16/views/infoScreens/electronicsInfoScreen.dart';
import 'package:project_16/views/infoScreens/furnitureInfoScreen.dart';
import 'package:project_16/views/infoScreens/laptopInfoScreen.dart';
import 'package:project_16/views/infoScreens/manInfoScreen.dart';
import 'package:project_16/views/infoScreens/phoneInfoScreen.dart';
import 'package:project_16/views/infoScreens/watchInfoScreen.dart';
import 'package:project_16/views/laptopView.dart';
import 'package:project_16/views/menView.dart';
import 'package:project_16/views/phonesView.dart';
import 'package:project_16/views/watchesView.dart';

void main() {
  runApp(const MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:IntroPage(),
      routes: {
        HomePage.id:(context)=>const HomePage(),
        HomeScreen.id:(context)=> HomeScreen(),
        WatchesView.id:(context)=>const WatchesView(),
        WatchInfoScreen.id:(context)=>WatchInfoScreen(),
        MenView.id:(context)=>MenView(),
        MenInfoScreen.id:(context)=>MenInfoScreen(),
        LaptopView.id:(context)=>LaptopView(),
        LaptopInfoScreen.id:(context)=>LaptopInfoScreen(),
        PhonesView.id:(context)=>PhonesView(),
        PhonesInfoScreen.id:(context)=>PhonesInfoScreen(),
        FurnitureView.id:(context)=>FurnitureView(),
        FurnitureInfoScreen.id:(context)=>FurnitureInfoScreen(),
        ElectronicsView.id:(context)=>ElectronicsView(),
        ElectronicsInfoScreen.id:(context)=>ElectronicsInfoScreen(),
        IntroPage.id:(context)=>IntroPage(),


      },);

  }
}

