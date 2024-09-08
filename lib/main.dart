import 'package:bisq/pages/seed_words_page.dart';
import 'package:bisq/pages/seed_words_question_page.dart';
import 'package:bisq/pages/something_off_page.dart';
import 'package:bisq/pages/splash_screen.dart';
import 'package:bisq/pages/success_page.dart';
import 'package:bisq/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

const textTheme = TextStyle(color: Color(0xffececec));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Bisq',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        scaffoldBackgroundColor: const Color.fromARGB(255, 38, 38, 38),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromARGB(255, 38, 38, 38),
          titleTextStyle:
              GoogleFonts.ibmPlexSans(color: Colors.white, fontSize: 16),
          shadowColor: const Color(0xff333333),
        ),
        textTheme: GoogleFonts.ibmPlexSansTextTheme(const TextTheme(
          bodySmall: textTheme,
          bodyLarge: textTheme,
          bodyMedium: textTheme,
        )),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}

final _router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (ctx, _) => const SplashScreen()),
    GoRoute(path: '/welcome', builder: (ctx, _) => const WelcomePage()),
    GoRoute(path: '/seed', builder: (ctx, _) => const SeedWordsPage()),
    GoRoute(path: '/seedQ', builder: (ctx, _) => const SeedWordsQuestionPage()),
    GoRoute(
        path: '/somethingOff', builder: (ctx, _) => const SomethingOffPage()),
    GoRoute(path: '/success', builder: (ctx, _) => const SuccessPage()),
  ],
);
