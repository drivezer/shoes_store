import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget promoCard(Color color, String title, String promo, String img) {
  return Container(
    decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(8.0)),
    width: double.infinity,
    height: 200,
    child: Stack(
      children: [
        Positioned(
            width: 200,
            left: 8,
            top: 30,
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            )),
        Positioned(
          left: 8,
          top: 140,
          child: Text(
            'Price $promo Off',
            style: const TextStyle(
                color: Colors.white, fontSize: 26, fontWeight: FontWeight.w400),
          ),
        ),
        Positioned(
          left: 200,
          width: 190,
          child: Image.network(
            img,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return const SizedBox(
                  width: 150,
                  height: 150,
                  child: Center(child: CupertinoActivityIndicator(radius: 20)));
            },
            errorBuilder: (context, error, stackTrace) {
              return const SizedBox(
                  width: 150,
                  height: 150,
                  child: Center(
                    child: CupertinoActivityIndicator(
                      radius: 20,
                    ),
                  ));
            },
          ),
        )
      ],
    ),
  );
}
