import 'package:cleo/Pages/Shop.dart';

import 'package:cleo/Pages/cart.dart';
import 'package:cleo/Pages/userhome.dart';
import 'package:cleo/Pages/wishlist.dart';
import 'package:cleo/util/gridpage.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  int _selectedindex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _children = [
    UserHome(),
    ShopPage(),
    WishListPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Login",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: _children[_selectedindex],
        backgroundColor: Color.fromARGB(255, 20, 2, 57),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedindex,
            onTap: _navigateBottomNavBar,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shops'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: 'Wishlist'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), label: 'Cart'),
            ]));
  }
}
