import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FormTextInputScreen extends StatefulWidget {
  const FormTextInputScreen({super.key});

  @override
  State<FormTextInputScreen> createState() => _FormTextInputScreenState();
}

class _FormTextInputScreenState extends State<FormTextInputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text field"),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            FormBuilderTextField(
              name: 'Tuwulire',
              initialValue: "The Deaf",
              readOnly: false,
            ),
            FormBuilderTextField(
              name: 'Deaf',
              enabled: false,
              maxLines: 5,
              onChanged: (val) {
                print("=======>$val<=========");
              },
            ),
            FormBuilderTextField(
              name: 'password',
              obscureText: true,
              autofocus: true,
              maxLength: 10,
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.next,
            ),
            FormBuilderTextField(
              name: 'Country',
              textCapitalization: TextCapitalization.words,
              textAlign: TextAlign.center,
              cursorHeight: 5,
              cursorWidth: 5,
              cursorColor: Colors.pink,
              keyboardType: TextInputType.text,
            ),
            FormBuilderTextField(
              name: 'email',
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.done,
            ),
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
