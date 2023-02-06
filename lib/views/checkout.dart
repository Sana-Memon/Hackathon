import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackathon/consts/colors.dart';
import 'package:hackathon/consts/images.dart';
import 'package:hackathon/views/splash_screen.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 500,
        margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
        color: whiteColor,
        child: Column(
          children: [
            Container(
              child: Image.asset(spCheckout),
            ),
            Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: greenColor,
                  padding: EdgeInsets.all(12),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SplashScreen()),
                  );
                },
                child: Text(
                  "Order Successfull",
                  style: TextStyle(color: lightGrey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
