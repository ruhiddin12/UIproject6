import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:uiproject6/bolalar.dart';
import 'package:uiproject6/siz_uchun.dart';

class TopReyting extends StatefulWidget {
  static const String id = 'top_reyting';

  const TopReyting({Key? key}) : super(key: key);

  @override
  State<TopReyting> createState() => _TopReytingState();
}

class _TopReytingState extends State<TopReyting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Top Reyting",
          style: TextStyle(
              fontWeight: FontWeight.w900, color: Colors.white, fontSize: 35),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Bolalar.id);
              },
              icon: const Icon(
                Icons.arrow_forward,
                size: 40,
                color: Colors.white,
              )),
        ],
        backgroundColor: Colors.blueGrey,
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, SizUchun.id);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 40,
              color: Colors.white,
            )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: 400,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: Colors.blueGrey,
              ),
              child: const Center(
                child: Text(
                  "Container",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 70),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 30,
                bottom: 30,
                right: 10,
                left: 10,
              ),
              margin: const EdgeInsets.all(30),
              height: 200,
              width: 300,
              color: Colors.greenAccent,
              child: Center(
                child: Container(
                  height: 100,
                  width: 200,
                  color: Colors.teal,
                  child: const Center(
                      child: Text(
                    "Container",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
