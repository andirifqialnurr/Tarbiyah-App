import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tarbiyah_app/provider/page_provider.dart';
import 'package:tarbiyah_app/screens/pages/main_page.dart';
import 'package:tarbiyah_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PageProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
        routes: {
          '/main_page': (context) => const MainPage(),
        },
      ),
    );
  }
}
