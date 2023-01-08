import 'dart:convert';

import 'package:flutter/material.dart';

class JsonScreen extends StatefulWidget {
  const JsonScreen({super.key});

  @override
  State<JsonScreen> createState() => _JsonScreenState();
}

class _JsonScreenState extends State<JsonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("JSON format"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            title: const Text("String to json"),
            onTap: () {
              stringToJson();
            },
          ),
          ListTile(
            title: const Text("Object to json"),
            onTap: () {
              objectToJson();
            },
          ),
          ListTile(
            title: const Text("JSON TO OBJECT"),
            onTap: () {
              jsonToObject();
            },
          ),
        ],
      ),
    );
  }

  String raw_string = "I am a software engineer";
  var processed_string = "";
  Person my_person = new Person();

  void stringToJson() {
    var processed_string = jsonEncode(raw_string);
    print("=> RAW STRING: $raw_string");
    print("=> PROCESSED STRING: $processed_string");
    print("STR TO JSON");
  }

  void objectToJson() {
    print(my_person.name);
    processed_string = jsonEncode(my_person);
    print(processed_string);
  }

  void jsonToObject() {
    objectToJson();
    //print(processed_string);
    Person my_person_2 = Person.fromJson(processed_string);
    print(my_person_2.name);
  }
}

class Person {
  String name = "John Doe";
  int age = 21;
  String country = "Uganda";

  static Person fromJson(String _map) {
    Map<String, dynamic> map = jsonDecode(_map);

    Person p = new Person();
    p.name = map["name"];
    p.age = map["age"];
    p.country = map["country"];
    return p;
  }

  toJson() {
    return {
      "name": name,
      "age": age,
      "country": country,
    };
  }
}
