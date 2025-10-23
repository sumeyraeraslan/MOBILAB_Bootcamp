import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  final int selectedIndex;
  final Function(int) onItemTapped;
  

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 120,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            bottom: 40,
            child: Container(
              width: screenWidth * 0.6,
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal:16),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  /* NavigationBar(
                    backgroundColor: Colors.transparent,
                    indicatorColor: Colors.transparent,
                    height: 80,
                    labelBehavior:
                        NavigationDestinationLabelBehavior.alwaysHide,
                    selectedIndex: selectedIndex,
                    onDestinationSelected: onItemTapped,
                    destinations: const <NavigationDestination>[
                      NavigationDestination(
                        icon: Icon(Icons.home_outlined, color: Colors.white),
                        selectedIcon: Icon(Icons.home, color: Colors.white),
                        label: '',
                      ),
                      NavigationDestination(
                        icon: Icon(Icons.search_outlined, color: Colors.white),
                        selectedIcon: Icon(Icons.search, color: Colors.white),
                        label: '',
                      ),
                      NavigationDestination(
                        icon: Icon(Icons.favorite_outline, color: Colors.white),
                        selectedIcon: Icon(Icons.favorite, color: Colors.white),
                        label: '',
                      ),
                      NavigationDestination(
                        icon: Icon(Icons.person_outline, color: Colors.white),
                        selectedIcon: Icon(Icons.person, color: Colors.white),
                        label: '',
                      ),
                    ],
                  ), */
                  _buildNavItem(0, Icons.home_outlined, Icons.home),
                  _buildNavItem(1, Icons.search_outlined, Icons.search),
                  _buildNavItem(2, Icons.favorite_outline, Icons.favorite),
                  _buildNavItem(3, Icons.person_outline, Icons.person),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildNavItem(int index, IconData icon, IconData selectedIcon) {
    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: selectedIndex == index ? Colors.transparent : Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: Icon(
          selectedIndex == index ? selectedIcon : icon,
          color: Colors.white,
          size: 24,
        ),
      ),
    );
  }
}