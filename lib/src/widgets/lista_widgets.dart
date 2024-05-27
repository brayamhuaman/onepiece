import 'package:flutter/material.dart';
import 'package:onepiece/src/pages/detail_page.dart';
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
            color: Colors.green,
          ),
          const SizedBox(
            height: 20,
          ),
          bloquePersonajes("Brooke", 0xff4d22d0, "o1"),
          bloquePersonajes("Luffy", 0xfff93c2a, "o2"),
          bloquePersonajes("Ace", 0xffe99420, "o3"),
          bloquePersonajes("Boa", 0xffff45a4, "o4"),
          bloquePersonajes("Hancook", 0xffa4284c, "o5"),
          bloquePersonajes("Zoro", 0xff22c45f, "o6")
        ],
      ),
    );
  }
      Widget bloquePersonajes(String nombre, int color, String imagen){
        return GestureDetector(
          onTap: ()=>{
            Navigator.of(context).push(MaterialPageRoute
            (builder:  (context)=> DetailPage(color: 
            color,image: "assets/$imagen.png",nombre: nombre,))),
          },
          child: Container(
            margin: const EdgeInsets.only(bottom: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xFF272727),
            ),
            height: 65,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            offset: const Offset(0,1),
                            spreadRadius: 0,
                            blurStyle: BlurStyle.normal,
                            color: Color(color),
                          )
                        ],                  
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Image.asset("assets/$imagen.png"),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(nombre,style: const TextStyle(fontSize: 16, color: Colors.white),)
                
                  ],
                ),
                IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert_rounded,color: Colors.grey,))
              ],
            ),
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