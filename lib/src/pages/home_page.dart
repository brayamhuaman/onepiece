import 'package:flutter/material.dart';
import 'package:onepiece/src/widgets/header_widget.dart';
import 'package:onepiece/src/widgets/lista_widgets.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const   Scaffold(
      backgroundColor:  Color.fromARGB(255, 14, 15, 15),
      body:  Column(
        children:   <Widget>[
           HeaderWidget(),
             ListaPersonajes()
        ],
        
      ),

   
    );
  }
}