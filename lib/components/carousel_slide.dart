import 'package:flutter/material.dart';

class CarouselSlide extends StatelessWidget {
  const CarouselSlide({
    super.key,
    required this.step,
    required this.image,
    required this.text,
  });

  final int step;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xff2b2b2b),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('$step', style: const TextStyle(fontSize: 32),),
          SizedBox(
            width: 150,
            child: Image.asset(image)
          ),
          Text(text),
        ],
      )
    );
  }
}
