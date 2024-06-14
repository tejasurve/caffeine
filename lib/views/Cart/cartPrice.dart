import 'package:caffeine_app/config/Colors.dart';
import 'package:caffeine_app/utils/bounce.dart';
import 'package:flutter/material.dart';

class CartPrice extends StatefulWidget {
  const CartPrice({super.key});

  @override
  State<CartPrice> createState() => _CartPriceState();
}

class _CartPriceState extends State<CartPrice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 230,
                  child: SizedBox(
                    height: 40, // Set the height you want
                    child: TextField(
                      cursorColor: bgColor,
                      style: TextStyle(
                          color: bgColor), // Input text color to white
                      decoration: InputDecoration(
                        focusColor: bgColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: bgColor), // Focused border color to white
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: bgColor), // Enabled border color to white
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        labelText: 'Enter Coupon Code here',
                        labelStyle: TextStyle(
                            color: bgColor,
                            fontSize: 10), // Label text color to white
                      ),
                    ),
                  ),
                ),
                Container(
                    height: 40,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        color: bgColor),
                    child: const ElevatedButton(
                        onPressed: null,
                        child: Text(
                          "Apply",
                          style: TextStyle(color: fontColor),
                        )))
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sub-total",
                  style: TextStyle(
                    color: bgColor,
                    fontSize: 11,
                    fontWeight: FontWeight.w800,
                  ), // Label text color to white
                ),
                Text("\$44")
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Shipping",
                  style: TextStyle(
                    color: bgColor,
                    fontSize: 11,
                    fontWeight: FontWeight.w800,
                  ), // Label text color to white
                ),
                Text("\$44")
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                    color: bgColor,
                    fontSize: 11,
                    fontWeight: FontWeight.w800,
                  ), // Label text color to white
                ),
                Text("\$44")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
