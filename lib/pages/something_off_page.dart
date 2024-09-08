import 'package:bisq/components/button.dart';
import 'package:bisq/components/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SomethingOffPage extends StatelessWidget {
  const SomethingOffPage({super.key});

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
            const Column(
              children: [
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        'Something is off!',
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 48),
                        child: Text(
                          'The word you selected does not match the seed word.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Column(
                children: [
                  const Text(
                    'NEXT STEP',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff7c7c7c),
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Flexible(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 48),
                          child: Text(
                            'Make sure you wrote all the words correctly and in the right order.',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Row(children: [
                      Button(
                        label: 'Back to Seed Words',
                        onPress: () {
                          GoRouter.of(context).push('/seed');
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
