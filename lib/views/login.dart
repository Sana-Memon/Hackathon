import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackathon/consts/colors.dart';
import 'package:hackathon/consts/images.dart';
import 'package:hackathon/custom_widget/custom_textfield.dart';
import 'package:hackathon/views/home.dart';
import 'package:hackathon/views/signup.dart';
import 'package:velocity_x/velocity_x.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();
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
                    "LOGIN",
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
                    customTextField("Email", loginEmailController),
                    SizedBox(
                      height: 40,
                    ),
                    customTextField("Password", loginPasswordController),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          child: Text("Forget Password"), onPressed: () {}),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextButton(
                      child: Text(
                        "Don't have an account? Create one",
                        style: TextStyle(color: greenColor),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()),
                        );
                      },
                    ),
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
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => const Login()),
                          // );
                          await SignInUser(loginEmailController,
                              loginPasswordController, context);
                          loginEmailController.clear();
                          loginPasswordController.clear();
                        },
                        child: Text(
                          "Login",
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
}

SignInUser(loginEmailController, loginPasswordController, context) async {
  try {
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: loginEmailController.text,
        password: loginPasswordController.text);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Home()),
    );
    print("login Successful");
    VxToast.show(context, msg: "Login Successful");
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
    }
  }
}
