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
                fillColor: AppTheme.greyTheme,
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
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal, // yatay kaydırma
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(100),
                      color: AppTheme.greyTheme, 
                    ),
                      child: Center(
                        child: Padding(padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
                        child: Image.asset('image/logo/adidas.png',
                        width: 50,
                        height: 50,
                        fit: BoxFit.contain,
                        ),
                      ),
                      ),
                  ),

                  Container(
                    width: 80,
                    height: 80,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(100),
                      color: AppTheme.greyTheme, 
                    ),
                      child: Center(
                        child: Padding(padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
                        child: Image.asset('image/logo/nike.png',
                        width: 100,
                        height: 100,
                        fit: BoxFit.contain,
                        ),
                      ),
                      ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(100),
                      color: AppTheme.greyTheme, 
                    ),
                      child: Center( 
                        child: Image.asset('image/logo/converse.png',
                        height: 100,
                        width: 100,
                        fit: BoxFit.contain,
                        ),
                      ),
                      ),
                  Container(
                    width: 80,
                    height: 80,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(100),
                      color: AppTheme.greyTheme, 
                    ),
                      child: Center( 
                        child: Image.asset('image/logo/vans.png',
                        height: 65,
                        width: 65,
                        fit: BoxFit.contain,
                        ),
                      ),
                      ),
                      Container(
                    width: 80,
                    height: 80,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(100),
                      color: AppTheme.greyTheme, 
                    ),
                      child: Center( 
                        child: Image.asset('image/logo/puma.png',
                        height: 70,
                        width: 70,
                        fit: BoxFit.contain,
                        ),
                      ),
                      ),
                      Container(
                    width: 80,
                    height: 80,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(100),
                      color: AppTheme.greyTheme, 
                    ),
                      child: Center( 
                        child: Image.asset('image/logo/jordan.png',
                        height: 55,
                        width: 55,
                        fit: BoxFit.contain,
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
