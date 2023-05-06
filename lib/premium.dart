import 'package:flutter/material.dart';
import 'package:uiproject6/bolalar.dart';
import 'package:uiproject6/home_page.dart';
import 'package:uiproject6/siz_uchun.dart';
import 'package:uiproject6/top_reyting.dart';

class Premium extends StatefulWidget {
  static const String id = 'premium';

  const Premium({Key? key}) : super(key: key);

  @override
  State<Premium> createState() => _PremiumState();
}

class _PremiumState extends State<Premium> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: const Icon(
          Icons.ac_unit,
          size: 40,
          color: Colors.white,
        ),
        actions: const [
          Icon(
            Icons.ac_unit,
            size: 40,
            color: Colors.white,
          ),
        ],
        title: const Text(
          "Premium",
          style: TextStyle(
              fontWeight: FontWeight.w900, fontSize: 40, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
                image: NetworkImage(
                    "http://amiri-hosein.persiangig.com/image/mazhabi/emam%20reza%2005.jpg"),
            ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.grey,
                  side: const BorderSide(width: 3, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, HomePage.id);
                },
                child: const Text(
                  "Home Page",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  side: const BorderSide(width: 5, color: Colors.yellow),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, SizUchun.id);
                },
                child: const Text(
                  "Siz   Uchun",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      backgroundColor: Colors.greenAccent),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  side: const BorderSide(width: 5, color: Colors.green),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, TopReyting.id);
                },
                child: const Text(
                  "Top Reyting",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  side: const BorderSide(width: 5, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Bolalar.id);
                },
                child: const Text(
                  "Bolalar",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
