import 'package:flutter/material.dart';

class CarouselIndicator extends StatelessWidget {
  const CarouselIndicator({
    super.key,
    required this.index,
    required this.itemsCount,
    this.widthPercentage = 0.4,
  });

  final double index;
  final int itemsCount;
  final double widthPercentage;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * widthPercentage;
    double itemWidth = width / itemsCount;
    double activeItemPosition = itemWidth * index;

    return SizedBox(
      height: 3,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            height: 1.5,
            width: width,
            decoration: BoxDecoration(
              // color: Color(0xff25b136),
              color: Color(0xff707070),
              borderRadius: BorderRadius.circular(10)
            ),
          ),
      
          Positioned(
            left: activeItemPosition,
            child: Container(
              height: 3,
              width: itemWidth,
              decoration: BoxDecoration(
                color: Color(0xff25b136),
                borderRadius: BorderRadius.circular(10)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
