import 'package:flutter/material.dart';
import 'package:uiproject6/siz_uchun.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.home,
          size: 40,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, SizUchun.id);
              },
              icon: const Icon(
                Icons.menu,
                size: 40,
              )),
          const SizedBox(
            width: 20,
          ),
        ],
        backgroundColor: Colors.grey,
        title: const Text(
          "App Store11111",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Image(
              height: 800,
              width: 450,
              fit: BoxFit.cover,
              image: AssetImage("assets/images/img.png"),
            ),
          ],
        ),
      ),
    );
  }
}
