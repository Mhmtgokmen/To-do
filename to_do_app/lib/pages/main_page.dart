import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:to_do_app/constants.dart';
import 'package:to_do_app/pages/home_page.dart';
import 'package:to_do_app/pages/menu.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomePage(),
    const MenuPage(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: primaryColor,
            unselectedItemColor: darkGreyColor,
            currentIndex: currentIndex,
            onTap: onTap,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Iconsax.home_24), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Iconsax.menu), label: 'Menu'),
            ]),
      ),
    );
  }
}
