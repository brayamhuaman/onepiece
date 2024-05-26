import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});
  final tituloTextStyle =  const TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
        fontSize: 30,
  );
  final subtituloTextStyle =  const TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
        fontSize: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.all(25.0),
      height: 170.0,
      decoration: const BoxDecoration(
        color:Colors.black,
      ),
      child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column( mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                "One Piece",
                style: tituloTextStyle,
              ),
              Text(
                "Serie",
                style: subtituloTextStyle,
              )
            ],
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.black.withOpacity(.1),
                ),
                child: IconButton(
                  icon: const Icon(Icons.search,size: 28,color: Colors.white),
                  onPressed: () {},
                ),
              ),
              const SizedBox(width: 10.0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.black.withOpacity(.1),
                ),
                child: IconButton(
                  icon: const Icon(Icons.notifications,size: 28,color: Colors.white),
                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

