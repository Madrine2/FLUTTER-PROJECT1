import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FormOtherFieldsScreen extends StatefulWidget {
  const FormOtherFieldsScreen({super.key});

  @override
  State<FormOtherFieldsScreen> createState() => _FormOtherFieldsScreenState();
}

class _FormOtherFieldsScreenState extends State<FormOtherFieldsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Other fields"),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            FormBuilderDateTimePicker(
              name: "dob",
              inputType: InputType.date,
              initialValue: DateTime.now(),
              decoration: const InputDecoration(
                  label: Text("Date of Birth"),
                  icon: Icon(
                    Icons.date_range,
                    color: Colors.pink,
                  )),
            )
          ],
        ),
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
