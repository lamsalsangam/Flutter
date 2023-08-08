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
              "Yen(円) TO NPR(रू)",
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: TextField(
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                ),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(style: BorderStyle.none)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(
                      color: Colors.black54,
                      strokeAlign: BorderSide.strokeAlignInside,
                    ),
                  ),
                  suffixIcon: Icon(Icons.currency_yen_sharp),
                  suffixIconColor: Colors.amber,
                  hintText: "Please Enter the amount in USD",
                  filled: true,
                  fillColor: Colors.black12,
                  contentPadding: EdgeInsets.all(25.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
