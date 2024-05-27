import 'package:flutter/material.dart';
import 'package:onepiece/src/widgets/blur_container.dart';
import 'package:onepiece/src/widgets/infotititle-widget.dart';
class DetailPage extends StatefulWidget {
  const DetailPage({super.key,required this.color,required this.image,required this.nombre});
  
  final int color;
  final String image;
  final String nombre;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  double alturaPantalla = 0;

  @override
  Widget build(BuildContext context) {
    alturaPantalla = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(widget.color),
              Colors.black],begin: Alignment.topCenter,end: Alignment.bottomCenter
          )
        ),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              // FONDO DE IMAGEN : decoration: const  BoxDecoration(color: Colors.orangeAccent),
                 Container(
                padding: const EdgeInsets.only(left: 12.0),
                child: SizedBox(
                  height: alturaPantalla*0.6, 
                  child: Hero(tag: widget.color, child: Image.asset(widget.image)),
                )
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: BlurContainer(child: Container(
                width: 160,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white.withOpacity(0.1),
              ),
              child: Text(widget.nombre,style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white
              ),),
              ) ))
            ],
          ),
          const SizedBox(height: 30,),
           Padding(padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            "${widget.nombre} #personaje", style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),
          ),
          ),
          const SizedBox(height: 5),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text("One Piece",style: TextStyle(color: Colors.white70),),),

          const SizedBox(height: 50),
          const Padding(padding:  EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InfoTitle(title: "Eichiro Oda", subtitle: "Creador"),
              InfoTitle(title: "Japón", subtitle: "Pais")
            ],
          ),
          ),
          const SizedBox(height: 20),
          const Spacer(),
          Container(
            width: double.infinity,
            height: 50,
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(widget.color),
            ),
            child: const Text("Volver",style: TextStyle(
              color: Colors.white60,
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),),
          )
        ],
       ),
      ),
    );
  }
}