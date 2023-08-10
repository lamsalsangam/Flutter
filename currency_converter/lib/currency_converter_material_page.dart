import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() => _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage> {
  double result=0;
  final TextEditingController textEditingController =TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose(); // Dispose of the controller here
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Currency Converter",style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Yen(円) TO NPR(रू)",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 30.0,),
             Text(
              result.toString(),
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w400
              ),
            ),
            const SizedBox(height: 30.0,),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: TextField(
                controller: textEditingController,
                onChanged: (String value){
                  setState(() {
                    result = double.parse((double.parse(value) * 0.92).toStringAsPrecision(3));
                  });
                },
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                decoration: const InputDecoration(
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
            ),
            const SizedBox(height: 20.0,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextButton(onPressed: (){
                debugPrint("Button Pressed");
              },
              style: TextButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: Colors.blueGrey,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)
                )
              ),
                child: const Text("Convert"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
