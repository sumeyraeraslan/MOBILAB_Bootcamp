import 'package:drips/app/theme.dart';
import 'package:drips/widgets/appBar.dart';
import 'package:drips/widgets/brand_logo.dart';
import 'package:drips/widgets/favoriteIcon.dart';
import 'package:flutter/material.dart';
import 'package:drips/widgets/navBar.dart';

class Anasayfa1 extends StatefulWidget {
  const Anasayfa1({super.key});

  @override
  State<Anasayfa1> createState() => _Anasayfa1State();
}

class _Anasayfa1State extends State<Anasayfa1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Stack(
        children: [

        Positioned.fill(
          child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
              child: Column(
                children: [
                  //Search
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
            
                  //KONUM
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
            
                  //LOGO
                  SizedBox(
                    height: 80,
                    child: ListView(
                      scrollDirection: Axis.horizontal, //Yana kaydırma
                      children: const [
                        BrandLogo(imagePath: 'image/logo/adidas.png', size: 50),
                        BrandLogo(imagePath: 'image/logo/nike.png', size: 100),
                        BrandLogo(imagePath: 'image/logo/converse.png', size: 100),
                        BrandLogo(imagePath: 'image/logo/vans.png', size: 65),
                        BrandLogo(imagePath: 'image/logo/puma.png', size: 70),
                        BrandLogo(imagePath: 'image/logo/jordan.png', size: 55),
                      ],
                    ),
                  ),
            
                  //Kampanya Kartı
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'image/shoes/1.png',
                          height: 100,
                          width: 200,
                          fit: BoxFit.contain,
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Year-End Sale',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                'Up To 90%',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                width: 100,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: AppTheme.primary,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    print("Shop Now");
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: AppTheme.primary,
                                    padding: EdgeInsets.zero,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  child: const Text(
                                    'Shop Now',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
            
                  //ÜRÜNLER BAŞLIK
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      children: [
                        const SizedBox(width: 7),
                        const Text(
                          'New Arial ',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {
                            print("see all");
                          },
                          child: Text(
                            'see all',
                            style: TextStyle(color: AppTheme.primary),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //ÜRÜNLER
                  Stack(
                    children: [
                      SizedBox(
                      child: GridView.count(
                        crossAxisCount: 2, //Her satıra 2 ürün alıyor
                        mainAxisSpacing: 10, //dikey boşluk
                        crossAxisSpacing: 10, //yatau boşluk
                        childAspectRatio: 0.75, //kutunun oranı
                        physics:
                            const NeverScrollableScrollPhysics(), //Grid kendi scrolunu kullanmaması için
                        shrinkWrap: true, //Grid boyutunu içeriğe göre ayarlar
                        children:[
                          FavIcon(imagePath: 'image/shoes/1.png'),
                          FavIcon(imagePath: 'image/shoes/2.png'),
                          FavIcon(imagePath: 'image/shoes/3.jpg'),
                          FavIcon(imagePath: 'image/shoes/4.png'),
                          FavIcon(imagePath: 'image/shoes/5.png'),
                          FavIcon(imagePath: 'image/shoes/6.png'),
                        ],
                      ),
                    ),
                    ],
                  ),
                  
                  //Navbarın yüksekliği kadar boşluk ekledik çünkü ürünlerin arkada görünmesini istiyoruz.
                  const SizedBox(height: 120,)
                ],
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: const Navbar(),
            )
        ],
      ),
    );
  }
}
