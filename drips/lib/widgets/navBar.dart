import 'package:drips/app/theme.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            bottom: 40,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.6,
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 0),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                )
              ]
            ),
              child: NavigationBar(
                backgroundColor: Colors.transparent,
                indicatorColor: Colors.transparent,
                height: 80,
                labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
                selectedIndex: 0,
                onDestinationSelected: (int index) {
                  print("$index");
                },
                destinations: const <NavigationDestination>[
                  NavigationDestination(
                    icon: Icon(Icons.home_outlined, color: Colors.white),
                    selectedIcon: Icon(Icons.home, color: Colors.white),
                    label: '',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.search_outlined, color: Colors.white),
                    selectedIcon: Icon(Icons.search_outlined, color: Colors.white),
                    label: '',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.favorite_outline, color: Colors.white),
                    selectedIcon: Icon(Icons.favorite_outline, color: Colors.white),
                    label: '',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.person, color: Colors.white),
                    selectedIcon: Icon(Icons.person, color: Colors.white),
                    label: '',
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
