import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      // The Scaffold widget in Flutter is used to construct the fundamental visual layout structure of the material design.
    home: Scaffold(
      // An AppBar to display on the top of the Scaffold
      appBar: AppBar(
        title: const Text('Learning Flutter'),
        centerTitle: true,
        backgroundColor: Colors.brown[600],
      ),
      // Primary content of the Scaffold displayed below the Scaffold
      // Centering the body content
      body: Center(
        child: Text('Hello, World!',
        // Adding the styles to the text
        style: TextStyle(fontSize: 20.0,
        fontWeight: FontWeight.bold,
        letterSpacing: 2.0,
        color: Colors.grey[600],
        fontFamily: 'GentiumBookPlus'),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: startHammering,
        backgroundColor: Colors.brown.shade600,
        child: const Text('Click'),
      ),
    ),
  ));
}


void startHammering() {
  if (kDebugMode) {
    print('bang bang bang');
  }
}