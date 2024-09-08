import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                          width: 125,
                          child: Image.asset('assets/images/logo-green.png')),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        'Exchange, Decentralized',
                        style: TextStyle(
                            color: Color.fromARGB(255, 80, 80, 80),
                            fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text('Initializing'),
                      const SizedBox(
                        height: 12,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 100,
                        child: TweenAnimationBuilder<double>(
                          duration: const Duration(seconds: 5),
                          curve: Curves.easeInOut,
                          tween: Tween<double>(
                            begin: 0,
                            end: 1,
                          ),
                          onEnd: () {
                            GoRouter.of(context).push('/welcome');
                            // GoRouter.of(context).push('/somethingOff');
                          },
                          builder: (context, value, _) =>
                              LinearProgressIndicator(
                            value: value,
                            semanticsLabel: 'Linear progress indicator',
                            color: const Color(0xff25b136),
                            backgroundColor: const Color(0xff707070),
                            borderRadius: BorderRadius.circular(50),
                            minHeight: 2.5,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text('Connecting to Tor Network...',
                          style: TextStyle(
                              color: Color(0xff7b7b7b), fontSize: 12)),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
