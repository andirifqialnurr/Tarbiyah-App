import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg2Color,
      appBar: AppBar(
        title: Text(
          'Halaqah Page',
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: bg3Color,
          ),
        ),
        toolbarHeight: 45,
        centerTitle: true,
        actions: const [
          // Padding(
          //   padding: EdgeInsets.all(8),
          //   child: CircleAvatar(
          //     backgroundColor: Colors.transparent,
          //     backgroundImage: AssetImage('assets/profile_image.png'),
          //   ),
          // ),
        ],
        backgroundColor: bg2Color,
        elevation: 1,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: bg2Color,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: const Offset(2, 2),
                  blurRadius: 5,
                  spreadRadius: 1,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Image.asset(height: 14, width: 14, 'assets/ic_search.png'),
                const SizedBox(width: 6),
                Text(
                  'Search',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: bg3Color,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
