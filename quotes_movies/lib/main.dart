import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: "RRRrrrr!!!",
        text: "Guy, elle m'aime ! Je suis un couple maintenant."),
    Quote(
        author: "RRRrrrr!!!",
        text:
            "Qu'est ce que t'attends mal... J'ai jamais vu un quelqu'un attendre aussi mal."),
    Quote(
        author: "RRRrrrr!!!",
        text: "Chauve et lâche, ça fait beaucoup pour un seul homme."),
    Quote(author: "OSS 117", text: "J'aime me beurrer la biscotte."),
    Quote(author: "OSS 117", text: "J’aime me battre."),
    Quote(author: "OSS 117", text: "Comment est votre blanquette ?"),
    Quote(
        author: "Les bronzés font du ski",
        text:
            "Bon dans une demi-heure je nous considère comme définitivement perdus.")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Citations de films culte"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: quotes
                .map((quote) => QuoteCard(
                    quote: quote,
                    delete: () {
                      setState(() {
                        quotes.remove(quote);
                      });
                    }))
                .toList(),
          ),
        ),
      ),
    );
  }
}
