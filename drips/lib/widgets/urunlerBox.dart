import 'package:drips/app/theme.dart';
import 'package:flutter/material.dart';

class Urunlerbox extends StatelessWidget {
  final String imagePath;
  final double size;

  const Urunlerbox(
    {
    super.key, 
    required this.imagePath,
    this.size = 100,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppTheme.greyTheme,
      ),
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            imagePath,
            height: size,
            width: size,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
