import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastScreen extends StatefulWidget {
  const ToastScreen({super.key});

  @override
  State<ToastScreen> createState() => _ToastScreenState();
}

class _ToastScreenState extends State<ToastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Toast"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
              onTap: () {
                makeToast();
              },
              child: const Center(
                  child: Text(
                "Make Toast",
              )))
        ],
      ),
    );
  }

  void makeToast() {
    Fluttertoast.showToast(
        msg: "Welcome",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER_RIGHT,
        timeInSecForIosWeb: 5,
        backgroundColor: Colors.blue,
        textColor: Colors.red,
        fontSize: 16.0);
  }
}
