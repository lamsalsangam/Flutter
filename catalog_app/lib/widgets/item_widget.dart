import 'package:catalog_app/models/catalog.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item}) : assert(item!=null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (){
          if (kDebugMode) {
            print("${item.name} is pressed");

          }},
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.3,
          style: TextStyle(
            color: Colors.deepPurple[900],
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
