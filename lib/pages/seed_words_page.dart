import 'package:bisq/components/button.dart';
import 'package:bisq/components/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const words = [
  "witch",
  "collapse",
  "shame",
  "open",
  "road",
  "again",
  "open",
  "shame",
  "ice",
  "despair",
  "creek",
  "least"
];

class SeedWordsPage extends StatelessWidget {
  const SeedWordsPage({super.key});

  @override
  Widget build(BuildContext context) {
    int index = 0;
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
                    Text(
                      'Seed Words',
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Flexible(
                        child: Text(
                          'Write down the words below and store them in a safe, personal place.',
                          style: TextStyle(
                            color: Color(0xff818181),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 30,
                    shrinkWrap: true,
                    childAspectRatio: 100 / 30,
                    children: words.map((word) {
                      index += 1;
                      return Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                            color: const Color(0xff2d2d2d),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Text(
                                  '$index.',
                                  style:
                                      const TextStyle(color: Color(0xff828282)),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Text(word),
                              ],
                            ),
                          ),
                        ),
                      );
                    }).toList(),
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
                        label: 'Confirm Seed Words',
                        onPress: () {
                          GoRouter.of(context).push('/seedQ');
                        },
                        color: ButtonColor.primary,
                      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Row(children: [
                      Button(
                        label: 'Backup Seed Words Later',
                        onPress: () {
                          GoRouter.of(context).push('/success');
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
