import 'package:flutter/material.dart';

class ContainerStylingScreen extends StatefulWidget {
  const ContainerStylingScreen({super.key});

  @override
  State<ContainerStylingScreen> createState() => _ContainerStylingScreenState();
}

class _ContainerStylingScreenState extends State<ContainerStylingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text("Container decoration"),
      ),
      body: Column(
        children: [
          Container(
            // ignore: sort_child_properties_last
            child: const Text("Mobile networks!",
                style: TextStyle(color: Colors.blue)),
            width: 300,
            margin: const EdgeInsets.all(30),
            padding: const EdgeInsets.all(30),
            height: 300,
            decoration: const BoxDecoration(
              color: Colors.grey,
              /* border: Border.all(

               )
                image: DecorationImage(
                    image: AssetImage('assets/images/interact.jpeg'))),*/
            ),
          )
        ],
      ),
    );
  }
}
