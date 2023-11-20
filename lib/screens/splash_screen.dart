import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tarbiyah_app/theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/main_page');
    });

    return Scaffold(
      backgroundColor: bg2Color,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 130,
              height: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/praying.png'),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Tarbiyah App',
              style: GoogleFonts.poppins(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: bg3Color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
