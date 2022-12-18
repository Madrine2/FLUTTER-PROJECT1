import 'package:flutter/material.dart';

class ContainerScreen extends StatefulWidget {
  const ContainerScreen({super.key});

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade400,
      appBar: AppBar(
        title: const Text("Container"),
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.blueGrey.shade500,
        margin: EdgeInsets.fromLTRB(30, 30, 30, 30),
        padding: EdgeInsets.fromLTRB(50, 50, 60, 60),
        /*padding: EdgeInsets.only(left: 50, right: 50, top: 50, bottom: 50),*/
        child: Container(
          color: Colors.blueAccent,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          child: const Text(
            "FLUTTER APP",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w200),
          ),
        ),
      ),
    );
  }
}
