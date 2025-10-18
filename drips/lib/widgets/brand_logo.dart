import 'package:drips/app/theme.dart';
import 'package:flutter/material.dart';

class BrandLogo extends StatelessWidget {
  final String imagePath;
  final double size;

  const BrandLogo({super.key, required this.imagePath, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: AppTheme.greyTheme,
      ),
      child: Center(
        child: Image.asset(
          imagePath,
          width: size,
          height: size,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
