import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tarbiyah_app/theme.dart';
import 'package:tarbiyah_app/widget/tile_activities.dart';
import 'package:tarbiyah_app/widget/tile_infomabit.dart';
import 'package:tarbiyah_app/widget/tile_inforihlah.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bg2Color,
      appBar: AppBar(
        toolbarHeight: 50,
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 8, right: 20, bottom: 8),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/profile_image.png'),
            ),
          ),
        ],
        backgroundColor: transparentColor,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
              left: 20,
            ),
            child: Text(
              'Assalamualaikum',
              style: GoogleFonts.poppins(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
              left: 20,
            ),
            child: Text(
              'Andi Rifqial Nur',
              style: GoogleFonts.poppins(
                color: bg3Color,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
              left: 20,
              bottom: 20,
            ),
            child: Stack(
              children: [
                Container(
                  width: width,
                  height: 180,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        primaryColor,
                        primary2Color,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: -20,
                  child: Image.asset('assets/praying.png'),
                  height: 126,
                  width: 206,
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/ic_moon.png',
                                height: 16, width: 16),
                            SizedBox(width: 8),
                            Text(
                              '27 Ramadhan 1443 H',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 50),
                        Text(
                          'Fajr',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '04:17 AM',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Indonesia',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
              left: 20,
            ),
            child: Text(
              'Aktifitas Halaqah',
              style: GoogleFonts.poppins(
                color: bg3Color,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.only(
              right: 20,
              left: 20,
              bottom: 20,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Activities(
                        image: 'assets/activities_icon/ic_persensi.png',
                        activitiesName: 'Presensi'),
                    Activities(
                        image: 'assets/activities_icon/ic_notes.png',
                        activitiesName: 'Catatan'),
                    Activities(
                        image: 'assets/activities_icon/ic_tadarrus.png',
                        activitiesName: 'Tadarrus'),
                    Activities(
                        image: 'assets/activities_icon/ic_infaq.png',
                        activitiesName: 'Infaq'),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Activities(
                        image: 'assets/activities_icon/ic_mabit.png',
                        activitiesName: 'Mabit'),
                    Activities(
                        image: 'assets/activities_icon/ic_rihlah.png',
                        activitiesName: 'Rihlah'),
                    Activities(
                        image: 'assets/activities_icon/ic_talk.png',
                        activitiesName: 'Bahasa'),
                    Activities(
                        image: 'assets/activities_icon/ic_tarbiyah.png',
                        activitiesName: 'Tarbiyah'),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
              left: 20,
              bottom: 10,
            ),
            child: Text(
              'Informasi Mabit',
              style: GoogleFonts.poppins(
                color: bg3Color,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            height: 200,
            padding: const EdgeInsets.only(
              left: 20,
              bottom: 20,
            ),
            child: const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        right: 16), // Adjust the spacing between items
                    child: InfoMabit(
                        image: 'assets/images/mabit 1.png',
                        name: 'Mabit Pondok Informatika',
                        time: '19:30 PM'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: 16), // Adjust the spacing between items
                    child: InfoMabit(
                        image: 'assets/images/mabit 2.png',
                        name: 'Mabit 1 Syawal',
                        time: '20:00 PM'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: 16), // Adjust the spacing between items
                    child: InfoMabit(
                        image: 'assets/images/mabit 3.png',
                        name: 'Mabit Special Ramadhan',
                        time: '21:00 PM'),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
              left: 20,
              bottom: 10,
            ),
            child: Text(
              'Informasi Rihlah',
              style: GoogleFonts.poppins(
                color: bg3Color,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            height: 250,
            padding: const EdgeInsets.only(
              left: 20,
              bottom: 20,
            ),
            child: const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        right: 16), // Adjust the spacing between items
                    child: InfoRihlah(
                        image: 'assets/images/rihlah 1.png',
                        location: 'Malino',
                        name: 'Rihlah 1',
                        time: '09:30 AM'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: 16), // Adjust the spacing between items
                    child: InfoRihlah(
                        image: 'assets/images/rihlah 2.png',
                        location: 'Pantai Bira',
                        name: 'Rihlah 2',
                        time: '07:00 AM'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: 16), // Adjust the spacing between items
                    child: InfoRihlah(
                        image: 'assets/images/rihlah 3.png',
                        location: 'Sinjai',
                        name: 'Rihlah 3',
                        time: '16:00 PM'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: 16), // Adjust the spacing between items
                    child: InfoRihlah(
                        image: 'assets/images/rihlah 4.png',
                        location: 'Bulukumba',
                        name: 'Rihlah 4',
                        time: '10:00 AM'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: 16), // Adjust the spacing between items
                    child: InfoRihlah(
                        image: 'assets/images/rihlah 5.png',
                        location: 'Bone',
                        name: 'Rihlah 5',
                        time: '13:00 AM'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
