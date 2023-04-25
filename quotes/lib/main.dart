import 'package:flutter/material.dart';
import 'quote.dart';

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
  List<Quote> quotes = [
    Quote(author: 'Oscar Wilde', text: 'Be yourself; everyone else is already taken'),
    Quote(author: 'Oscar Wilde', text: 'I have nothing to declare except my genius'),
    Quote(author: 'Oscar Wilde', text: 'The truth is rarely pure and never simple'),
    Quote(author: "NoOne", text: "Success is not final; yeah failure can be fatal; but it is the courage to continue that counts.")
  ];

  Widget quoteTemplate(quote){
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quote.text,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[600],
            ),),
            const SizedBox(height: 6.0,),
            Text(quote.author,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey[800],
            ),)
          ],
        ),
      ),
    );
  }

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
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}