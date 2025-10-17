import 'package:flutter/material.dart';
import 'app/theme.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'What are you looking for?',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[250],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 9),
              child: Row(
                children: [
                  Icon(Icons.location_pin, color: AppTheme.primary, size: 22),
                  const SizedBox(width: 7),
                  const Text(
                    'Ship to ',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                  ),
                  const Text(
                    'JI. Malioboro, Blok Z, no 18',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  const Spacer(),
                  IconButton(onPressed: () {}, icon: Icon(Icons.chevron_right)),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal, // yatay kaydırma
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(80),
                      color: Colors.grey, 
                      image: DecorationImage(image: NetworkImage(
                      'https://turbologo.com/articles/wp-content/uploads/2019/07/Three-Bars-adidas-logo-1.jpg',
                      ), 
                      fit: BoxFit.cover,
                    ),
                  ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(60),
                      color: Colors.grey[250], 
                      image: DecorationImage(image: NetworkImage(
                      'https://images.squarespace-cdn.com/content/v1/5e31b33a1b5911193c47e7b5/279b45e0-3243-4e58-aee2-dd18403e2085/nike-swoosh-logo.jpeg',
                      ), 
                      fit: BoxFit.cover,
                    ),
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar AppBarWidget() {
    return AppBar(
      title: Center(child: Text("DRIPS")),
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined)),
      ],
    );
  }
}
