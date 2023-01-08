import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FormDecorationScreen extends StatefulWidget {
  const FormDecorationScreen({super.key});

  @override
  State<FormDecorationScreen> createState() => _FormDecorationScreenState();
}

class _FormDecorationScreenState extends State<FormDecorationScreen> {
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
              name: 'Username',
              readOnly: false,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                  label: Text("UserName"),
                  hintText: "Enter Username",
                  hintStyle: TextStyle(color: Colors.pink),
                  icon: Icon(
                    Icons.supervised_user_circle_rounded,
                    color: Colors.pink,
                  )),
            ),
            FormBuilderTextField(
              name: 'Email',
              readOnly: true,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.visiblePassword,
              decoration: const InputDecoration(
                label: Text("Email"),
                hintText: "Enter email",
                hintStyle: TextStyle(color: Colors.pink),
                icon: Icon(Icons.email_rounded, color: Colors.pink),
              ),
            ),
            FormBuilderTextField(
              name: 'Country',
              textCapitalization: TextCapitalization.words,
              textAlign: TextAlign.center,
              cursorHeight: 5,
              cursorWidth: 5,
              cursorColor: Colors.pink,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  label: Text("Country"),
                  hintText: "Enter country",
                  hintStyle: TextStyle(color: Colors.pink),
                  icon: Icon(
                    Icons.location_city_rounded,
                    color: Colors.pink,
                  )),
            ),
            FormBuilderTextField(
              name: 'password',
              obscureText: true,
              autofocus: true,
              maxLength: 10,
              keyboardType: TextInputType.none,
              textInputAction: TextInputAction.next,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                label: Text("Password"),
                hintText: "Enter Password",
                hintStyle: TextStyle(color: Colors.pink),
                /*helperText: "Enter password",
                helperStyle: TextStyle(color: Colors.pink),*/
                icon: Icon(Icons.password_rounded, color: Colors.pink),
              ),
            ),
            FormBuilderTextField(
              name: 'Confirm Password',
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                label: Text("Confirm password"),
                errorText: "Wrong password",
                hintText: "Confirm password",
                border: InputBorder.none,
                icon: Icon(Icons.password_rounded, color: Colors.pink),
              ),
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
