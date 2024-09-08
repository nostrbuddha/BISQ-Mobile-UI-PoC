import 'package:flutter/material.dart';

class WordCard extends StatelessWidget {
  const WordCard({
    super.key,
    required this.word,
    required this.onPress,
  });

  final String word;
  final Function(String) onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress(word);
      },
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width * 0.7,
        decoration: BoxDecoration(
          color: const Color(0xff2e2e2e),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            word,
            style: const TextStyle(
              fontSize: 20
            ),
          )
        ),
      ),
    );
  }
}
