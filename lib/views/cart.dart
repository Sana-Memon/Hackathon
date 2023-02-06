import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackathon/consts/colors.dart';
import 'package:hackathon/consts/images.dart';
import 'package:hackathon/views/checkout.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        color: greenColor,
        child: InkWell(
          child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.shopping_bag,
                  color: whiteColor,
                ),
                Text(
                  'Checkout    Rs. 54677',
                  style: TextStyle(color: whiteColor),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: Text(
          'PLANTIFY',
          style: TextStyle(color: Colors.black),
        ),
        leading: Image.asset(imgLoginLogo),
        actions: <Widget>[
          Icon(Icons.notification_add, color: Colors.black),
          Icon(Icons.menu, color: Colors.black)
        ],
      ),
      body: Column(
        children: <Widget>[
          Text("Your Bag",
              style: TextStyle(
                  color: greenColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 40)),
          Container(
            padding: EdgeInsets.all(16.0),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Image.asset(p1),
                  title: Text("Item 1"),
                  subtitle: Text("\$30.00"),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      // Delete the item from the bag
                    },
                  ),
                ),
                ListTile(
                  leading: Image.asset(p2),
                  title: Text("Item 2"),
                  subtitle: Text("\$40.00"),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      // Delete the item from the bag
                    },
                  ),
                ),
                ListTile(
                  leading: Image.asset(p2),
                  title: Text("Item 3"),
                  subtitle: Text("\$30.00"),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      // Delete the item from the bag
                    },
                  ),
                ),
              ],
            ),
          ),
          Text(
            "Saved for later",
            style: TextStyle(color: greenColor),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Image.asset(p1),
                  title: Text("Item 1"),
                  subtitle: Text("\$30.00"),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      // Delete the item from the bag
                    },
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(7)),
              Text(
                "Total Items: 3",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text("Total Cost: \$100.00"),
            ],
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: greenColor),
              child: Text("Proceed to Checkout"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CheckOut()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
