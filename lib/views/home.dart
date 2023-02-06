import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackathon/consts/colors.dart';
import 'package:hackathon/views/cart.dart';
import 'package:hackathon/views/favourite.dart';
import 'package:hackathon/views/home_screen.dart';
import 'package:hackathon/views/single_product.dart';

import '../consts/images.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    // Shop(),
    // Explore(),
    // Cart(),
    // Favourite(),
    // Account()
    HomeScreen(),
    Favourite(), Cart(),
    SingleProduct()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
//       body: Container(),
//       bottomNavigationBar: BottomNavigationBar(
//           selectedItemColor: redColor,
//           selectedLabelStyle: TextStyle(fontFamily: semibold),
//           type: BottomNavigationBarType.fixed,
//           backgroundColor: whiteColor,
//           items: navBarItem),
//     );
//   }
// }
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: greenColor,
        // selectedLabelStyle: TextStyle(fontFamily: semibold),
        type: BottomNavigationBarType.fixed,
        backgroundColor: whiteColor,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                icHome,
                width: 20,
              ),
              label: "home"),
          BottomNavigationBarItem(
              icon: Image.asset(
                icHeart,
                width: 20,
              ),
              label: "Favourites"),
          BottomNavigationBarItem(
              icon: Image.asset(
                icCart,
                width: 20,
              ),
              label: "cart"),
          BottomNavigationBarItem(
              icon: Image.asset(
                icProfile,
                width: 20,
              ),
              label: "profile"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
