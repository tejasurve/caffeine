/*
 * Created on Thu Apr 18 2024
 * Created by Tejas Surve
 *
 * Copyright (c) Tejas Surve
 */

import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:caffeine_app/config/Colors.dart';
import 'package:caffeine_app/utils/bounce.dart';
import 'package:caffeine_app/views/Product/product.dart';

class CoffeeTile extends StatefulWidget {
  const CoffeeTile({super.key});

  @override
  State<CoffeeTile> createState() => _CoffeeTileState();
}

class _CoffeeTileState extends State<CoffeeTile> {
  @override
  Widget build(BuildContext context) {
    coffee() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const ProductPage();
      }));
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GridView.count(
        padding: EdgeInsets.zero,
        crossAxisCount: 2,
        children: List.generate(
          //count
          5,
          (index) {
            return Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Bounce(
                    onPressed: coffee,
                    child: Container(
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: primaryColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                "assets/images/arabica.png",
                              ),
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Arabica",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800,
                                      color: fontColor),
                                ),
                                Text(
                                  "\$18",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800,
                                      color: bgColor),
                                )
                              ],
                            ),
                            const Expanded(
                              child: Text("Lorem ipsum dolor sit amet cons "),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 15,
                  top: 15,
                  child: FavoriteButton(
                    iconSize: 40,
                    isFavorite: true,
                    valueChanged: (_isFavourite) {
                      print('Is Favourite $_isFavourite)');
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
