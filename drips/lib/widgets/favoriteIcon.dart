import 'package:drips/widgets/urunlerBox.dart';
import 'package:flutter/material.dart';

class FavIcon extends StatefulWidget {
  final String imagePath;
  
  const FavIcon({super.key, required this.imagePath});

  @override
  State<FavIcon> createState() => _FavIconState();
}

class _FavIconState extends State<FavIcon> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Urunlerbox(imagePath: widget.imagePath, size: 140),
        Positioned(
          top: 8,
          right: 8,
          child: IconButton(
            onPressed: () {
              setState(() {
                isFavorited = !isFavorited;
              });
            },
            icon: Icon(
              isFavorited ? Icons.favorite : Icons.favorite_outline,
              color: isFavorited ? Colors.red : Colors.black,
              size: 20,
            ),
            style: IconButton.styleFrom(
              padding: EdgeInsets.zero,
              backgroundColor: Colors.white,
              shape: CircleBorder(),
            ),
          ),
        ),
      ],
    );
  }
}