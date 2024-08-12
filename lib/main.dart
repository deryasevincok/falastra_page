import 'package:flutter/material.dart';
import 'topic_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FortuneTopicPage(),
    );
  }
}

class FortuneTopicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
            child: Text(
          'Hızlandır',
          style: TextStyle(color: Colors.white),
        )),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.close,
              color: Colors.white,
            ),
            onPressed: () {
              // Çarpı butonu işlevi
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TopicCard(
                    imagePath: 'assets/Tv.png',
                    title: "İzle Hızlandır",
                    text: "",
                  ),
                  TopicCard(
                    imagePath: 'assets/Game.png',
                    title: "Oyna hızlandır",
                    text: "",
                  ),
                ],
              ),
              TopicCard(
                imagePath: 'assets/Coins.png',
                title: "Altın ile Hızlandır",
                text: "💰1 Altın",
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                "VEYA",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontFamily: 'Philosopher'),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Image.asset("assets/Objects.png", width: 100, height: 100),
              const Text(
                "PREMIUM",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 45.0,
                    fontFamily: 'Philosopher'),
              ),
              const Text(
                "ile 2 kat hızlı fal baktır.",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  // İlerle butonu işlevi
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    minimumSize: const Size(
                        double.infinity, 50) // Genişliği tam ekran yap
                    ),
                child: const Text(
                  'Premiumu keşfet',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
