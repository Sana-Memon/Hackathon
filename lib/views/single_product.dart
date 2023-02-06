import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackathon/consts/colors.dart';
import 'package:hackathon/consts/images.dart';

class SingleProduct extends StatelessWidget {
  const SingleProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          // width: double.infinity,
          // child: Image.asset(
          //   spBack,
          //   fit: BoxFit.fitWidth,
          // ),

          SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Stack(children: <Widget>[
                Image.asset(
                  spBack,
                  fit: BoxFit.fitHeight,
                ),
                Positioned(
                  bottom: 20,
                  left: 200,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      p1,
                      height: 250,
                    ),
                  ),
                ),
                Positioned(
                  left: 40,
                  top: 70,
                  child: Text(
                    "Product 1",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
                Positioned(
                  left: 40,
                  top: 120,
                  child: Text(
                    "Product 3",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                Positioned(
                  left: 40,
                  top: 170,
                  child: Text(
                    "erthvb  rdyhghm",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),

                Positioned(
                  left: 40,
                  top: 220,
                  child: Text(
                    "Rs 34567",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),

                Positioned(
                  left: 20,
                  top: 290,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: greenColor,
                        ),
                        height: 80,
                        width: 80,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.shopping_bag,
                              color: whiteColor,
                              size: 40,
                            ))),
                  ),
                ),
                Positioned(
                  left: 140,
                  top: 290,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: greenColor,
                        ),
                        height: 80,
                        width: 80,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
                              color: whiteColor,
                              size: 40,
                            ))),
                  ),
                ),

                // IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag))
                // Text(
                //   "Product 1",
                //   style: TextStyle(color: Colors.black, fontSize: 15),
                // )
              ]),
            ),
            Container(
              child: Text(
                "Overview",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(f2),
                        Text(
                          "250 ml",
                          style: TextStyle(
                              color: greenColor, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(f2),
                        Text(
                          "250 ml",
                          style: TextStyle(
                              color: greenColor, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(f2),
                        Text(
                          "250 ml",
                          style: TextStyle(
                              color: greenColor, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Container(
              child: Text(
                "Bio Information",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Text(
                  "lorem ipsimlorem ipsim loremipsim  loremipsimlorem ipsimlorem ipsim",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  )),
            ),
            Container(
              child: Text(
                "Similar Products",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 300,
                width: 400,
                margin: EdgeInsets.all(22),
                child: ListView.builder(
                    // physics: NeverScrollableScrollPhysics(),
                    // shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, int) {
                      return Stack(children: <Widget>[
                        Image.asset(back2),
                        Positioned(
                          top: 40,
                          left: 160,
                          child: Image.asset(
                            p2,
                            height: 150,
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
                      ]);
                    }),
              ),
            ),
            Container(child: Image.asset(spBanner)),
          ],
        ),
      ),
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
    );
  }
}
