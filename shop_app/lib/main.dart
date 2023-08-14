import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/Provider/cart_provider.dart';
import 'package:shop_app/data/global_variables.dart';
import 'package:shop_app/screen/my_homepage.dart';
import 'package:shop_app/screen/product_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        title: "Home Shop",
        theme: ThemeData(
          useMaterial3: true,
          fontFamily: "BarlowCondensed",
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(31, 45, 31, 1),
          ),
          appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          inputDecorationTheme: const InputDecorationTheme(
              hintStyle: TextStyle(
                fontSize: 16,
              ),
              prefixIconColor: Color.fromRGBO(31, 45, 31, 1)),
          textTheme: const TextTheme(
            titleLarge: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 35,
            ),
            titleMedium: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
            bodySmall: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ),
        home: const MyHomePage(),
      ),
    );
  }
}
