import 'package:bisq/components/button.dart';
import 'package:bisq/components/carousel_indicator.dart';
import 'package:bisq/components/word_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SeedWordsQuestionPage extends StatelessWidget {
  const SeedWordsQuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: const EdgeInsets.only(left: 10),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xff707070),
          ),
          onPressed: () => GoRouter.of(context).pop(),
        ),
        title: const Text('3. Backup Bitcoin Seed Phrase'),
        centerTitle: true,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(3.0),
          child: CarouselIndicator(
            index: 0,
            itemsCount: 2,
            widthPercentage: 1,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 18,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        'What is the seed word in position 4?',
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    children: [
                      WordCard(
                        word: 'least',
                        onPress: (word) {
                          print('Selected $word');
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      WordCard(
                        word: 'open',
                        onPress: (word) {
                          print('Selected $word');
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      WordCard(
                        word: 'creek',
                        onPress: (word) {
                          print('Selected $word');
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Row(children: [
                      Button(
                        label: 'Backup Seed Words Later',
                        onPress: () {
                          GoRouter.of(context).push('/somethingOff');
                        },
                        color: ButtonColor.secondary,
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
