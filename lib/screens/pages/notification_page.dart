import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg2Color,
      appBar: AppBar(
        title: Text(
          'Notification Page',
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
      body: const Center(child: Text('Notification Page')),
    );
  }
}
