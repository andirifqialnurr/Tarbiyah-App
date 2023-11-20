import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Activities extends StatelessWidget {
  final String image;
  final String activitiesName;

  const Activities({
    required this.image,
    required this.activitiesName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, height: 45, width: 45),
        const SizedBox(height: 4),
        Text(
          activitiesName,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 12,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
