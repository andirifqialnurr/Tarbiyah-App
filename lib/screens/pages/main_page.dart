import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tarbiyah_app/screens/pages/halaqah_page.dart';
import 'package:tarbiyah_app/screens/pages/notification_page.dart';
import 'package:tarbiyah_app/screens/pages/persensi_page.dart';

import '../../provider/page_provider.dart';
import '../../theme.dart';
import 'home_page.dart';
import 'profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    PageProvider pageProvider = Provider.of<PageProvider>(context);

    // Widget persensiButton() {
    //   return FloatingActionButton(
    //     onPressed: () {
    //       Navigator.pushNamed(context, '/persensi');
    //     },
    //     backgroundColor: secondaryColor,
    //     child: Image.asset(
    //       'assets/bottom_bar_icon/deactive_persensi.png',
    //       width: 20,
    //     ),
    //   );
    // }

    Widget body() {
      switch (pageProvider.currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const HistoryPage();
        case 2:
          return const PersensiPage();
        case 3:
          return const NotificationPage();
        case 4:
          return const ProfilePage();
        default:
          return const HomePage();
      }
    }

    Widget customBottomNav() {
      return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 12,
          clipBehavior: Clip.antiAlias,
          child: Stack(
            children: [
              BottomNavigationBar(
                elevation: 5,
                backgroundColor: bg2Color,
                currentIndex: pageProvider.currentIndex,
                onTap: (value) {
                  print(value);
                  pageProvider.currentIndex = value;
                },
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                items: [
                  BottomNavigationBarItem(
                    icon: Container(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/bottom_bar_icon/active_home.png',
                            width: 21,
                            color: pageProvider.currentIndex == 0
                                ? primaryColor
                                : secondaryBottomBarColor,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Home',
                            style: TextStyle(
                              color: pageProvider.currentIndex == 0
                                  ? primaryColor
                                  : secondaryBottomBarColor,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/bottom_bar_icon/active_halaqah.png',
                            width: 28,
                            height: 24,
                            color: pageProvider.currentIndex == 1
                                ? primaryColor
                                : secondaryBottomBarColor,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Halaqah',
                            style: TextStyle(
                              color: pageProvider.currentIndex == 1
                                  ? primaryColor
                                  : secondaryBottomBarColor,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/bottom_bar_icon/active_persensi.png',
                            width: 20,
                            height: 24,
                            color: pageProvider.currentIndex == 2
                                ? primaryColor
                                : secondaryBottomBarColor,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Persensi',
                            style: TextStyle(
                              color: pageProvider.currentIndex == 2
                                  ? primaryColor
                                  : secondaryBottomBarColor,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/bottom_bar_icon/active_notif.png',
                            width: 20,
                            height: 24,
                            color: pageProvider.currentIndex == 3
                                ? primaryColor
                                : secondaryBottomBarColor,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Notification',
                            style: TextStyle(
                              color: pageProvider.currentIndex == 3
                                  ? primaryColor
                                  : secondaryBottomBarColor,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/bottom_bar_icon/active_profile.png',
                            width: 20,
                            height: 24,
                            color: pageProvider.currentIndex == 4
                                ? primaryColor
                                : secondaryBottomBarColor,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Profile',
                            style: TextStyle(
                              color: pageProvider.currentIndex == 4
                                  ? primaryColor
                                  : secondaryBottomBarColor,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    label: '',
                  ),
                  // BottomNavigationBarItem(
                  //   icon: Image.asset(
                  //     'assets/bottom_bar_icon/Profile.png',
                  //     width: 18,
                  //   ),
                  //   label: '',
                  // ),
                ],
              ),
              Positioned(
                top: 0,
                left: MediaQuery.of(context).size.width /
                    5 *
                    pageProvider.currentIndex,
                child: Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: 30,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        primaryColor.withOpacity(0), // Transparent at the top
                        primaryColor
                            .withOpacity(0.15), // Adjust opacity as needed
                        primaryColor, // Solid color at the bottom
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: bg2Color,
      // floatingActionButton: persensiButton(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
