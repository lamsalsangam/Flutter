import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/widgets/drawer.dart';
import 'package:catalog_app/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context){
    final dummyList = List.generate(15, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        // backgroundColor: Colors.indigo[900],
      ),
      drawer: const SafeArea(
        child: MyDrawer(),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     // crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Text(
      //         "Mockup for the store",
      //         style: TextStyle(
      //           color: Colors.deepPurple[200],
      //           fontSize: 25.0,
      //           fontStyle: FontStyle.italic,
      //         ),
      //       ),
      //       TextButton(onPressed: (){Navigator.pushNamed(context, "/login");}, child: const Text("Login Page"))
      //     ],
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: dummyList[index],);
          },
        ),
      ),
    );
  }
}