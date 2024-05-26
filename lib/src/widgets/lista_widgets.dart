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
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              bloquesPortada("p1.jpg","titulo: ","2018"),
              SizedBox(width: widthpantalla*0.03),
               bloquesPortada("p2.jpg","titulo","2020"),
               SizedBox(width: widthpantalla*0.03),
                bloquesPortada("p3.jpg","titulo","2022")
            ],
          ),
          const Divider(
            thickness: 2,
            color: Colors.red,
          ),
          const SizedBox(
            height: 20,
          )
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
          RichText(text: TextSpan(
            text: titulo,style: const TextStyle(color: Colors.white70,fontSize: 14),
            children: [
              TextSpan(
                text: subtitulo,style: const TextStyle(color: Colors.grey,fontWeight: FontWeight.w300,fontSize: 12)
              )
            ]
          ))
      ],
    );
  }

}