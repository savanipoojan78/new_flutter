import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final mylist=WordPair.random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView',
      home: RandomWords(),

    );



  }
}
class RandomWordState extends State<RandomWords>
{
  final _sugg=<WordPair>[];
  final _font=const TextStyle(fontSize: 20.0);
    Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: _buildSugesion(),

    );

  }
  Widget _buildSugesion()
  {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: /*1*/ (context, i) {
//          if (i.isOdd) return Divider(); /*2*/
//
//          final index = i ~/ 2; /*3*/
//          if (index >= _sugg.length) {
//            _sugg.addAll(generateWordPairs().take(10)); /*4*/
//          }
          _sugg.addAll(generateWordPairs().take(10));
          return _buildRow(_sugg[i]);
        });
  }
  Widget _buildRow(WordPair wordpair)
  {
    return ListTile(
      title: Text(wordpair.asUpperCase,style: _font),

    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return new RandomWordState();
  }

}



