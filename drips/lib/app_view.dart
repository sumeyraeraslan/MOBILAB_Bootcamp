import 'package:drips/widgets/navBar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppView extends StatefulWidget {
  const AppView({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: widget.navigationShell
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 120,
                child: Navbar(selectedIndex: widget.navigationShell.currentIndex, onItemTapped: _goBranch)),
            ),
        ],
      ),
    );
  }
}