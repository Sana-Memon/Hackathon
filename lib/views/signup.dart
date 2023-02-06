import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackathon/consts/colors.dart';
import 'package:hackathon/consts/images.dart';
import 'package:hackathon/custom_widget/custom_textfield.dart';
import 'package:hackathon/views/login.dart';
import 'package:hackathon/views/signup.dart';
import 'package:velocity_x/velocity_x.dart';

import 'home.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          backgroundColor: whiteColor,
        ),
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(12)),
              Row(
                children: [Image.asset(imgLoginLogo), Text("PLANTIFY")],
              ),
              Container(
                padding: EdgeInsets.all(22),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: greenColor, fontSize: 20),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      "orem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ",
                      style: TextStyle(fontSize: 12, color: greenColor)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                      color: lightGrey,
                      blurRadius: 10.0,
                      spreadRadius: 5.0,
                      offset: Offset(0.0, 0.0),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(20),
                width: 400,
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    customTextField("Email", email),
                    SizedBox(
                      height: 40,
                    ),
                    customTextField("Password", password),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: greenColor,
                          padding: EdgeInsets.all(12),
                        ),
                        onPressed: () async {
                          await RegisterUser();
                          AddUsers();
                          email.clear();
                          password.clear();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()),
                          );
                        },
                        child: Text(
                          "SignUp",
                          style: TextStyle(color: lightGrey),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  RegisterUser() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
      VxToast.show(context, msg: "Sign up Successful");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  AddUsers() async {
    CollectionReference ref = FirebaseFirestore.instance.collection("Users");
    await ref.add({
      "Email": email.text,
      "Password": password.text,
    });
  }
}
