import 'package:bisq/components/button.dart';
import 'package:bisq/components/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

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
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: const Color(0xff25b136),
                    borderRadius: BorderRadius.circular(75),
                  ),
                  child: const Icon(
                    Icons.check_rounded,
                    color: Colors.white,
                    size: 100,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        'All words add up!',
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
                  height: 24,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 48),
                        child: Text(
                          'ATTENTION: Make sure you save them in a private and secure place.',
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
                            "Let's create a trading account so we can buy and sell Bitcoin,",
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
                        label: 'Create a Trading Account',
                        onPress: () {
                          print('Create a Trading Account');
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
                        label: 'Create Trading Account Later',
                        onPress: () {
                          print('Create Trading Account Later');
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
