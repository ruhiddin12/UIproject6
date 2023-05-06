import 'package:flutter/material.dart';
import 'package:uiproject6/bolalar.dart';
import 'package:uiproject6/home_page.dart';
import 'package:uiproject6/premium.dart';
import 'package:uiproject6/siz_uchun.dart';
import 'package:uiproject6/top_reyting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const HomePage() ,
      routes: {
        HomePage.id:(context)=>const HomePage(),
        SizUchun.id:(context)=>const SizUchun(),
        TopReyting.id:(context)=>const TopReyting(),
        Bolalar.id:(context)=>const Bolalar(),
        Premium.id:(context)=>const Premium(),
      },
    );
  }
}

