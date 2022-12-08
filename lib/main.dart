import 'package:flutter/material.dart';
import './components/promo_card.dart';

import 'components/shopping_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: ShoppingApp());
  }
}

class ShoppingApp extends StatefulWidget {
  const ShoppingApp({Key? key}) : super(key: key);

  @override
  State<ShoppingApp> createState() => _ShoppingAppState();
}

class _ShoppingAppState extends State<ShoppingApp> {
  List<String> imgUrl = [
    "https://freepngimg.com/thumb/shoes/28530-3-nike-shoes-transparent.png",
  ];
  List<String> menShoes = [
    "https://freepngimg.com/thumb/shoes/3-2-shoes-transparent.png",
    "https://freepngimg.com/thumb/shoes/55565-3-sneakers-picture-free-hd-image.png",
    "https://freepngimg.com/thumb/adidas/58269-superstar-originals-adidas-smith-sneakers-stan.png"
  ];
  List<String> womenshoes = [
    "https://freepngimg.com/thumb/shoes/55508-7-sneakers-download-image-download-free-image.png",
    "https://freepngimg.com/thumb/shoes/55554-7-sneakers-png-file-hd.png",
    "https://freepngimg.com/thumb/shoes/55505-4-sneakers-download-free-image.png",
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          'Shoes Store',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart, color: Colors.black))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Promotions !',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(
                height: 8,
              ),
              promoCard(Colors.blue, 'Discover the nike collection', '20%',
                  imgUrl[0]),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Men Shoes',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 225,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    shoppingCard(menShoes[0], 'Nike Air ', '200E'),
                    shoppingCard(menShoes[1], 'Nike Air ', '200E'),
                    shoppingCard(menShoes[2], 'Nike Air ', '200E'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Women Shoes',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 225,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    shoppingCard(womenshoes[0], 'Nike Air ', '200E'),
                    shoppingCard(womenshoes[1], 'Nike Air ', '200E'),
                    shoppingCard(womenshoes[2], 'Nike Air ', '200E'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        selectedItemColor: Colors.orange[500],
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
