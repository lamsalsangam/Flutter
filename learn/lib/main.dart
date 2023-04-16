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
      body: Center(
        // child: Text('Hello, World!',
        //   // Adding the styles to the text
        //   style: TextStyle(fontSize: 20.0,
        //       fontWeight: FontWeight.bold,
        //       letterSpacing: 2.0,
        //       color: Colors.grey[600],
        //       fontFamily: 'GentiumBookPlus'),),
        //   child: Image(
        //     // For the network image
        //     // image: NetworkImage('https://images.unsplash.com/photo-1516331590554-978b8de25f18?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80'),
        //     // For the local image
        //     image: AssetImage('assets/space-2.jpg'),
        //   ),
        // Another way to get image is
        child: Image.asset('assets/space-1.jpg'),
        // child: Image.network('https://images.unsplash.com/photo-1516331590554-978b8de25f18?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: startHammering,
        backgroundColor: Colors.brown.shade600,
        child: const Text('Click'),
      ),
    );
  }
}

