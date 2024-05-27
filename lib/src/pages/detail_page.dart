import 'package:flutter/material.dart';
import 'package:onepiece/src/widgets/blur_container.dart';
import 'package:onepiece/src/widgets/infotititle-widget.dart';
class DetailPage extends StatelessWidget {
  const DetailPage({super.key,required this.color,required this.image,required this.nombre});

  final int color;
  final String image;
  final String nombre;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(color),
              Colors.black],begin: Alignment.topCenter,end: Alignment.bottomCenter
          )
        ),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container( decoration: const  BoxDecoration(color: Colors.orangeAccent),
                padding: const EdgeInsets.only(left: 12.0),
                child: SizedBox(
                  height: 500.0, child: Image.asset(image),
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
              child: Text(nombre,style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white
              ),),
              ) ))
            ],
          ),
          const SizedBox(height: 30,),
           Padding(padding:  EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            "$nombre #personaje", style: const TextStyle(
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
          const Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InfoTitle(title: "Eichiro Oda", subtitle: "Creador"),
              InfoTitle(title: "Japón", subtitle: "Pais")
            ],
          ),)
        ],
       ),
      ),
    );
  }
}