import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackathon/consts/images.dart';
import 'package:hackathon/views/home_top_tabs.dart';
import 'package:velocity_x/velocity_x.dart';

import '../consts/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  Widget Product() {
    return Container(
      margin: EdgeInsets.all(22),
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (context, int) {
            return Stack(children: <Widget>[
              Image.asset(back),
              Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  p1,
                  height: 250,
                ),
              ),
              Positioned(
                left: 40,
                top: 20,
                child: Text(
                  myData.data.docs[1]["Name"],
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              Positioned(
                left: 40,
                top: 50,
                child: Text(
                  "Product 3",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),

              Positioned(
                left: 40,
                top: 90,
                child: Text(
                  "Rs 566",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),

              Positioned(
                  left: 40,
                  top: 120,
                  child: Icon(
                    Icons.shopping_basket,
                    color: Colors.black,
                  )),

              Positioned(
                  left: 80,
                  top: 120,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.black,
                  )),
              // Text(
              //   "Product 1",
              //   style: TextStyle(color: Colors.black, fontSize: 15),
              // )
            ]);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: FutureBuilder(
        future: getProducts(),
        builder: ((context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.docs.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    customBanner(),
                    Container(
                      child: searchBox(),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [Product(), Image.asset(video), Product2()],
                        ),
                      ),
                    )
                  ],
                );
              },
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        }),
      ),
      drawer: Drawer(
        backgroundColor: greenColor,
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text(""),
              decoration: BoxDecoration(
                color: greenColor,
              ),
            ),
            ListTile(
              title: Text(
                "Shop",
                style: TextStyle(color: whiteColor),
              ),
              leading: Icon(
                Icons.shop,
                color: whiteColor,
              ),
              onTap: () {
                // Navigate to page 2
              },
            ),
            ListTile(
              title: Text(
                "Plant care",
                style: TextStyle(color: whiteColor),
              ),
              leading: Icon(
                Icons.carpenter,
                color: whiteColor,
              ),
              onTap: () {
                // Navigate to page 2
              },
            ),
            ListTile(
              title: Text(
                "Community",
                style: TextStyle(color: whiteColor),
              ),
              leading: Icon(
                Icons.comment,
                color: whiteColor,
              ),
              onTap: () {
                // Navigate to page 2
              },
            ),
            ListTile(
              title: Text(
                "Shop",
                style: TextStyle(color: whiteColor),
              ),
              leading: Icon(
                Icons.shop,
                color: whiteColor,
              ),
              onTap: () {
                // Navigate to page 2
              },
            ),
            ListTile(
              title: Text(
                "Tract Order",
                style: TextStyle(color: whiteColor),
              ),
              leading: Icon(
                Icons.carpenter,
                color: whiteColor,
              ),
              onTap: () {
                // Navigate to page 2
              },
            ),
            ListTile(
              title: Text(
                "My Account",
                style: TextStyle(color: whiteColor),
              ),
              leading: Icon(
                Icons.comment,
                color: whiteColor,
              ),
              onTap: () {
                // Navigate to page 2
              },
            ),
          ],
        ),
      ),
    );
  }
}

getProducts() {
  CollectionReference ref = FirebaseFirestore.instance.collection("Products");
  var myData = ref.get();
  return myData;
}

searchBox() {
  return Container(
    height: 45,
    margin: EdgeInsets.all(22),
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(20),
    ),
    child: TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 20, top: 2),
        border: InputBorder.none,
        hintText: 'Search...',
      ),
    ),
  );
}

customBanner() {
  var sliderList = [imgSlider1, imgSlider1, imgSlider1, imgSlider1];

  return VxSwiper.builder(
      aspectRatio: 22 / 9,
      autoPlay: true,
      height: 200,
      itemCount: 3,
      itemBuilder: ((context, index) {
        return Container(
          width: double.infinity,
          child: Image.asset(sliderList[index]),
        );
      }));
}

Widget Product2() {
  return Container(
    margin: EdgeInsets.all(22),
    child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, int) {
          return Stack(children: <Widget>[
            Image.asset(back2),
            Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                p2,
                height: 250,
              ),
            ),
            Positioned(
              left: 40,
              top: 20,
              child: Text(
                "Product 1",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
            Positioned(
              left: 40,
              top: 50,
              child: Text(
                "Product 3",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),

            Positioned(
              left: 40,
              top: 90,
              child: Text(
                "Rs 566",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),

            Positioned(
                left: 40,
                top: 120,
                child: Icon(
                  Icons.shopping_basket,
                  color: Colors.black,
                )),

            Positioned(
                left: 80,
                top: 120,
                child: Icon(
                  Icons.favorite,
                  color: Colors.black,
                )),
            // Text(
            //   "Product 1",
            //   style: TextStyle(color: Colors.black, fontSize: 15),
            // )
          ]);
        }),
  );
}
