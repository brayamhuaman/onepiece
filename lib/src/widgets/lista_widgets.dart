import 'package:flutter/material.dart';
class ListaPersonajes extends StatefulWidget {
  const ListaPersonajes({super.key});
  


  @override
  State<ListaPersonajes> createState() => _ListaPersonajesState();
}

class _ListaPersonajesState extends State<ListaPersonajes> {
  double widthpantalla = 0;
  final tituloStyleText = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white
  );


  @override
  Widget build(BuildContext context) {
    widthpantalla = MediaQuery.of(context).size.width-50;
    return Expanded(
      child: ListView(
        padding:  const EdgeInsets.all(25),
        children: [
          Text("Portadas", style: tituloStyleText,),
          Row(
            children: [
              bloquesPortada("p1.jpg","titulo","subtitulo"),
              SizedBox(width: widthpantalla*0.03),
               bloquesPortada("p2.jpg","titulo","subtitulo"),
               SizedBox(width: widthpantalla*0.03),
                bloquesPortada("p3.jpg","titulo","subtitulo")
            ],
          ),
        ],
      ),
    );
  }

  Column bloquesPortada(String image, String titulo, String subtitulo){
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset("assets/$image", width: widthpantalla*0.31, fit:BoxFit.cover),
         ),
          const SizedBox(height: 10),
      ],
    );
  }

}