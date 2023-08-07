import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(child: Text("Currency Converter",style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),)),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Currency Converter",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              "0.0",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w400
              ),
            ),
            SizedBox(height: 30.0,),
            TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.attach_money_outlined),
                suffixIconColor: Colors.amber,
                hintText: "Please Enter the amount in USD"
              ),
            )
          ],
        ),
      ),
    );
  }
}
