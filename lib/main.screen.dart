import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:providerapp/providers/mainscreen.provider.dart';
import 'package:providerapp/providers/mainscreen.provider.dart';
import 'package:providerapp/screens/Notification.screen.dart';
import 'package:providerapp/screens/home.screen.dart';
import 'package:providerapp/screens/profile.screen.dart';
import 'package:providerapp/screens/settings.screen.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    List screens = [
      const settingsscreen(),
      homescreen(),
      NotificationScreen(),
      profilescreen()
    ];
    final mainScreenProvider = Provider.of<MainScreenProvider>(context);
    return Scaffold(
      body: screens[mainScreenProvider.selectedIndex.Index],
      bottomNavigationBar: const GNav(
          backgroundColor: Colors.black,
          gap: 8,
          activeColor: Colors.white,
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.notification_add,
              text: "Notifications",
            ),
            GButton(
              icon: Icons.settings_outlined,
              text: "Settings",
            ),
            GButton(
              icon: Icons.person,
              text: "Profile",
            ),
          ]),
    );
  }
}
