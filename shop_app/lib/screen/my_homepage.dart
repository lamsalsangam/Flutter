import 'package:flutter/material.dart';
import 'package:shop_app/screen/cart_page.dart';
import 'package:shop_app/screen/product_list.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;

  List<Widget> page =const [
    ProductList(),
    CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        onTap: (value){
          setState(() {
            currentPage = value;
          });
        },
        currentIndex: currentPage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}


