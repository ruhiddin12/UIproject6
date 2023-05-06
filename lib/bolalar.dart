import 'package:flutter/material.dart';
import 'package:uiproject6/premium.dart';
import 'package:uiproject6/top_reyting.dart';

class Bolalar extends StatefulWidget {
  static const String id = 'bolalar';

  const Bolalar({Key? key}) : super(key: key);

  @override
  State<Bolalar> createState() => _BolalarState();
}

class _BolalarState extends State<Bolalar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Bolalar",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, TopReyting.id);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 40,
              color: Colors.white,
            )),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Premium.id);
              },
              icon: const Icon(
                Icons.arrow_forward,
                size: 40,
                color: Colors.white,
              )),
        ],
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            image: const DecorationImage(
              image: NetworkImage(
                  'https://wp-s.ru/wallpapers/12/12/333674720901689/abstraktnyj-fon-krasno-golubogo-cveta.jpg'),
              fit: BoxFit.cover,
            ),
            border: Border.all(
              width: 1,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          width: 500,
          height: 800,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      image: const DecorationImage(
                        image: NetworkImage(
                            "https://w-dog.ru/wallpapers/12/16/559625504989181/linii-zelenyj-listya.jpg"),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                        width: 10,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 400,
                    width: 300,
                    child: Center(
                      child: Container(
                        decoration:  BoxDecoration(
                          color: Colors.green,
                          image: const DecorationImage(
                            image: NetworkImage(
                                "https://s8.hostingkartinok.com/uploads/images/2020/01/b4ea306499d92b80d8e3c1cc4211f8a8.jpg"),
                        fit: BoxFit.cover,  ),
                          border: Border.all(
                            width: 10,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 200,
                        width: 200,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
