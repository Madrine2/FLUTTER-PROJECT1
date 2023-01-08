import 'package:flutter/material.dart';

class TextStylingScreen extends StatefulWidget {
  const TextStylingScreen({super.key});

  @override
  State<TextStylingScreen> createState() => _TextStylingScreenState();
}

class _TextStylingScreenState extends State<TextStylingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade500,
      appBar: AppBar(
        title: const Text("Text styling"),
      ),
      body: ListView(
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
            child: const Text(
              "My text, my text my text my text my text my text my text......",
              textAlign: TextAlign.justify,
              maxLines: 1,
              overflow: TextOverflow.fade,
            ),
          ),

          // ignore: avoid_unnecessary_containers
          Container(
            child: const Text(
              "My text......",
              textAlign: TextAlign.justify,
              maxLines: 1,
              overflow: TextOverflow.fade,
              style: TextStyle(
                color: Colors.green,
                backgroundColor: Colors.yellow,
                fontSize: 30,
                fontWeight: FontWeight.w200,
                fontStyle: FontStyle.italic,
                letterSpacing: 1,
              ),
            ),
          )
        ],
      ),
    );
  }
}
