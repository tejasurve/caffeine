/*
 * Created on Mon Apr 22 2024
 * Created by Tejas Surve
 *
 * Copyright (c) Tejas Surve
 */

import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:caffeine_app/config/Colors.dart';
import 'package:caffeine_app/utils/bounce.dart';
import 'package:caffeine_app/views/Product/productCalc.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            children: [
              Container(
                height: 335,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/productPageBg.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 48.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Bounce(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 30,
                          color: fontColor,
                        ),
                      ),
                      const Text(
                        "Arabica Coffee",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                            color: fontColor),
                      ),
                      FavoriteButton(
                        iconSize: 40,
                        isFavorite: true,
                        valueChanged: (_isFavourite) {
                          print('Is Favourite $_isFavourite)');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Positioned(
            top: 280,
            child: ProductCustomization(),
          ),
        ],
      ),
    );
  }
}
