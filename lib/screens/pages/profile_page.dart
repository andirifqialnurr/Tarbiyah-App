import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tarbiyah_app/widget/tile_activities.dart';

import '../../theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bg2Color,
      appBar: AppBar(
        title: Text(
          'Profile Page',
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
            padding: const EdgeInsets.all(20),
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: bg1Color,
                      ),
                      padding: const EdgeInsets.all(4),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('assets/profile_image.png'),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Andi Rifqial Nur',
                          style: GoogleFonts.poppins(
                            color: bg3Color,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '08123456789',
                          style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  'Aktifitas Pribadi',
                  style: GoogleFonts.poppins(
                    color: bg3Color,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 15),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Activities(
                        image: 'assets/activities_icon/p_ic_sport.png',
                        activitiesName: 'Olahraga'),
                    Activities(
                        image: 'assets/activities_icon/p_ic_hafalan.png',
                        activitiesName: 'Hafalan'),
                    Activities(
                        image: 'assets/activities_icon/p_ic_dzikir.png',
                        activitiesName: 'Dzikir'),
                    Activities(
                        image: 'assets/activities_icon/p_ic_puasa.png',
                        activitiesName: 'Puasa'),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  'Pengaturan',
                  style: GoogleFonts.poppins(
                    color: bg3Color,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
