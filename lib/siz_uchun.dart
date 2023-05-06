import 'package:flutter/material.dart';
import 'package:uiproject6/home_page.dart';
import 'package:uiproject6/top_reyting.dart';

class SizUchun extends StatefulWidget {
  static const String id = 'siz_uchun';

  const SizUchun({Key? key}) : super(key: key);

  @override
  State<SizUchun> createState() => _SizUchunState();
}

class _SizUchunState extends State<SizUchun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, HomePage.id);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 40,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.arrow_forward,
              size: 40,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, TopReyting.id);
            },
          ),
        ],
        title: const Text(
          "Siz Uchun",
          style: TextStyle(
              fontWeight: FontWeight.w900, fontSize: 40, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: const [
            Image(
              height: 200,
              width: 400,
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://expertnov.ru/800/600/http/3put.ru/wp-content/uploads/2021/09/6-1024x640.jpg"),
            ),
            Image(
              height: 500,
              width: 400,
              fit: BoxFit.fill,
              image: AssetImage("assets/images/download.png"),
            ),
          ],
        ),
      ),
    );
  }
}
