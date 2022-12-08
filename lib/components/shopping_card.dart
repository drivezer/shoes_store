import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget shoppingCard(String img, String productName, String price) {
  return InkWell(
    onTap: () {},
    child: Container(
      padding: const EdgeInsets.all(0),
      decoration: const BoxDecoration(
        color: Color(0xfffafafa),
        boxShadow: [
          BoxShadow(blurRadius: 3, color: Colors.black26),
        ],
      ),
      margin: const EdgeInsets.only(right: 10, top: 8, bottom: 8),
      width: 130,
      height: 180,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              img,
              width: 130,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const SizedBox(
                  width: 120,
                  height: 80,
                  child: Center(
                    child: CupertinoActivityIndicator(radius: 15),
                  ),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return const SizedBox(
                    width: 120,
                    height: 80,
                    child: Center(
                      child: CupertinoActivityIndicator(
                        radius: 15,
                      ),
                    ));
              },
              fit: BoxFit.contain,
              height: 80,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              productName,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              price,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.orange[500]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.favorite_border)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_shopping_cart)),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
