import 'package:flutter/material.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade500,
      appBar: AppBar(
        title: const Text("Images"),
      ),
      body: ListView(
        children: const [
          Image(
            image: AssetImage('assets/images/deaf.jpeg'),
            width: 300,
            height: 300,
            //fit: BoxFit.fill,
            fit: BoxFit.cover,
          ),
          /* Image(
            image: NetworkImage('https://images.app.goo.gl/VJAfzum7bFmExuPL6'),
            width: 300,
            height: 300,
            //fit: BoxFit.fill,
            fit: BoxFit.cover,
          ),*/
          Image(
            image: AssetImage('assets/images/interact.jpeg'),
            width: 300,
            height: 300,
            //fit: BoxFit.fill,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
