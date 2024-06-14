import 'package:caffeine_app/config/Colors.dart';
import 'package:caffeine_app/utils/bounce.dart';
import 'package:caffeine_app/views/Cart/CartItems.dart';
import 'package:caffeine_app/views/Cart/cartPrice.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 48.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cart",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        color: fontColor),
                  ),
                  SizedBox()
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Orders",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        color: fontColor),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "You have 3 items in your cart",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w800,
                        color: fontColor),
                  ),

                  // Container(
                  //   height: 75,
                  //   padding: const EdgeInsets.all(8),
                  //   decoration: const BoxDecoration(
                  //     color: primaryColor,
                  //     borderRadius: BorderRadius.all(
                  //       Radius.circular(3),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            const CartItemList(),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const CartPrice(),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: primaryColor, width: 3),
                    borderRadius: BorderRadius.circular(10)),
                child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(bgColor),
                      foregroundColor: MaterialStatePropertyAll(Colors.white),
                      elevation: MaterialStatePropertyAll(0)),
                  onPressed: () {
                    print('Button pressed');
                  },
                  child: const Text(
                    'Finalize Order',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
