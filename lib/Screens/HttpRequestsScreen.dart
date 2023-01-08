import 'package:flutter/material.dart';

class HttpRequestsScreen extends StatefulWidget {
  const HttpRequestsScreen({super.key});

  @override
  State<HttpRequestsScreen> createState() => _HttpRequestsScreenState();
}

class _HttpRequestsScreenState extends State<HttpRequestsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Http"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            title: const Text("Http Get and post"),
            onTap: () {
              stringToJson();
            },
          ),

        ],
      ),
    );
  }

