import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget{
  @override
  _QuoteListState createState()=> _QuoteListState();
}

class _QuoteListState extends State<QuoteList>{
  List<String> quotes = [
    "Be yourself; Every One else is already taken.",
    "I have nothing to declare except my genius",
    "The truth is rarely pure and never simple",
    "Success is not final; yeah failure can be fatal; but it is the courage to continue that counts.",
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.orange[200],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((quote) => Text(quote)).toList(),
      ),
    );
  }
}