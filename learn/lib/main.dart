import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void startHammering() {
  if (kDebugMode) {
    print('bang bang bang');
  }
}

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}


class Home extends StatelessWidget {
  // @override is used so that the build function right below will override the one defined in the classes ancestors.
  @override
  Widget build(BuildContext context){
    // The Scaffold widget in Flutter is used to construct the fundamental visual layout structure of the material design
    return Scaffold(
      // An AppBar to display on the top of the Scaffold
      appBar: AppBar(
        title: const Text('Learning Flutter'),
        centerTitle: true,
        backgroundColor: Colors.brown[600],
      ),
      // Primary content of the Scaffold displayed below the Scaffold
      // Centering the body content
      // body: Center(
      //   // child: Text('Hello, World!',
      //   //   // Adding the styles to the text
      //   //   style: TextStyle(fontSize: 20.0,
      //   //       fontWeight: FontWeight.bold,
      //   //       letterSpacing: 2.0,
      //   //       color: Colors.grey[600],
      //   //       fontFamily: 'GentiumBookPlus'),),
      //   //   child: Image(
      //   //     // For the network image
      //   //     // image: NetworkImage('https://images.unsplash.com/photo-1516331590554-978b8de25f18?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80'),
      //   //     // For the local image
      //   //     image: AssetImage('assets/space-2.jpg'),
      //   //   ),
      //   // Another way to get image is
      //   // child: Image.asset('assets/space-1.jpg'),
      //   // child: Image.network('https://images.unsplash.com/photo-1516331590554-978b8de25f18?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80'),
      //   // For the icons to be used form the material design library
      //   // child: Icon(
      //   //   Icons.airport_shuttle,
      //   //   color: Colors.lightBlue,
      //   //   size: 50.0,
      //   // ),
      //   // child: ElevatedButton(
      //   //   onPressed: (){},
      //   //   child: Text('Elevated Button'),
      //   //   style: ElevatedButton.styleFrom(
      //   //     backgroundColor: Colors.lightBlue,
      //   //   ),
      //   // ),
      //   // child: TextButton(
      //   //   onPressed: (){},
      //   //   child: Text('Text button'),
      //   //   style: TextButton.styleFrom(
      //   //     foregroundColor: Colors.black,
      //   //     backgroundColor: Colors.lightBlue,
      //   //   ),
      //   // ),
      //   // Button with the icon inside
      //   // child: ElevatedButton.icon(
      //   //   onPressed: (){},
      //   //   icon: const Icon(
      //   //     Icons.mail,
      //   //     // color: Colors.black,
      //   //   ),
      //   //   label: Text('mail me'),
      //   //   style: ElevatedButton.styleFrom(
      //   //     backgroundColor: Colors.amber,
      //   //     foregroundColor: Colors.black,
      //   //   ),
      //   // ),
      //   // Icon Button
      //   // child: IconButton(
      //   //   onPressed: (){},
      //   //   icon: const Icon(
      //   //       Icons.mail_outline_sharp
      //   //   ),
      //   //    color: Colors.blueGrey,
      //   // ),
      // body: Container(
      //   // padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      //   // padding: EdgeInsets.all(20.0),
      //   padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
      //   // It is the same as the padding in the margin one
      //   margin: EdgeInsets.all(30.0),
      //   color: Colors.grey.shade400,
      //   child: Text('Hello World'),
      // ),
      // For the Row
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Text('Hello, World'),
      //     TextButton(onPressed: (){},
      //       child: Text('Click Me'),
      //       style: TextButton.styleFrom(
      //         backgroundColor: Colors.amber,
      //       ),),
      //     Container(
      //       color: Colors.cyan,
      //       padding: EdgeInsets.all(30.0),
      //       child: Text('Inside Container'),
      //     )
      //   ],
      // ),
      // For the Column
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   children: [
      //     Container(
      //       padding: EdgeInsets.all(20.0),
      //       color: Colors.cyan,
      //       child: Text('One'),
      //     ),
      //     Container(
      //       padding: EdgeInsets.all(30.0),
      //       color: Colors.pinkAccent,
      //       child: Text('Two'),
      //     ),
      //     Container(
      //       padding: EdgeInsets.all(40.0),
      //       color: Colors.amber,
      //       child: Text('Three'),
      //     ),
      //   ],
      // ),
      // Expanded Widget == Flex in web
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: Image.asset('assets/space-1.jpg'),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.pinkAccent,
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.amber,
              child: Text('3'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: startHammering,
        backgroundColor: Colors.brown.shade600,
        child: const Text('Click'),
      ),
    );
  }
}

