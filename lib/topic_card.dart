import 'package:flutter/material.dart';

class TopicCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String text;

  TopicCard({required this.imagePath, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      margin: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {
          // Kart tıklandığında işlev
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontFamily: 'Philosopher'),
            ),// İkon ile resim arasında boşluk bırakır
            Image.asset(imagePath, width: 100, height: 100),
            Text(text,style: TextStyle(color: Colors.white),),// Resmi ekle
          ],
        ),
      ),
    );
  }
}
