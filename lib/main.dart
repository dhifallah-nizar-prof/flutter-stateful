import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.blue)),
      home: CompteurPage(),
    );
  }
}


class CompteurPage extends StatefulWidget {
  CompteurPage({super.key});

  @override
  State<CompteurPage> createState() => _CompteurPageState();
}
class _CompteurPageState extends State<CompteurPage> {
  int compteur =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Compteur"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,),
      body:Center(child: Text("Valeur Compteur: ${compteur}")),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                compteur++;
              });
            },),
          SizedBox(width: 10,),
          FloatingActionButton(child: Icon(Icons.remove),
            onPressed: () {
              setState(() {
                compteur--;
              });
            },),
        ],
      ),
    );
  }
}
