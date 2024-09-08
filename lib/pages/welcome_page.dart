import 'package:bisq/components/button.dart';
import 'package:bisq/components/carousel_indicator.dart';
import 'package:bisq/components/carousel_slide.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const steps = [
  {
    "step": 1,
    "image": "assets/images/sl01.png",
    "text": "Fund Security Deposit",
  },
  {
    "step": 2,
    "image": "assets/images/sl02.png",
    "text": "Protect Your Wallet",
  },
  {
    "step": 3,
    "image": "assets/images/sl03.png",
    "text": "Backup Seed Words",
  },
  {
    "step": 4,
    "image": "assets/images/sl04.png",
    "text": "Create Trading Account",
  }
];

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  double currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 32,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome to Bisq',
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
                          'Now that you are connected to the network, you need to go through a few steps before initiating your first trade.',
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
                CarouselSlider(
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * 0.4,
                    enableInfiniteScroll: false,
                    onScrolled: (value) {
                      setState(() {
                        currentIndex = value ?? 0;
                      });
                    },
                  ),
                  items: steps.map((step) {
                    return Builder(
                      builder: (BuildContext context) {
                        return CarouselSlide(
                          image: step['image'] as String,
                          text: step['text'] as String,
                          step: step['step'] as int,
                        );
                      },
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 32,
                ),
                CarouselIndicator(
                  index: currentIndex,
                  itemsCount: steps.length,
                ),
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
                        label: 'Get Started',
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
                        label: 'Skip Initial Setup',
                        onPress: () {
                          print('Skip Initial Setup');
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
