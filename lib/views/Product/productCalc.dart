import 'package:caffeine_app/common-widget/layout.dart';
import 'package:caffeine_app/views/Cart/cart.dart';
import 'package:caffeine_app/views/Tab/motion_tab_controller.dart';
import 'package:flutter/material.dart';
import 'package:caffeine_app/config/Colors.dart';
import 'package:caffeine_app/utils/bounce.dart';

class ProductCustomization extends StatefulWidget {
  const ProductCustomization({super.key});

  @override
  State<ProductCustomization> createState() => _ProductCustomizationState();
}

class _ProductCustomizationState extends State<ProductCustomization> {
  MotionTabBarController? _motionTabBarController;
  late bool isSmall = false;
  late bool isMedium = false;
  late bool isLarge = false;

  late bool isSugar = false;
  late bool isMilk = false;
  late bool isCreame = false;
  int coffeeQty = 0;

  resetSelectedSize() {
    setState(() {
      isSmall = false;
      isMedium = false;
      isLarge = false;
    });
  }

  increaseCounter() {
    setState(() {
      coffeeQty = coffeeQty + 1;
    });
    print(coffeeQty);
  }

  decreaseCounter() {
    if (coffeeQty > 0) {
      setState(() {
        coffeeQty = coffeeQty - 1;
      });
    }
  }

  isSizeSelected(Enum size) {
    switch (size) {
      case coffeeType.small:
        resetSelectedSize();
        setState(() {
          isSmall = true;
        });
        break;
      case coffeeType.medium:
        resetSelectedSize();
        setState(() {
          isMedium = true;
        });
        break;
      case coffeeType.large:
        resetSelectedSize();
        setState(() {
          isLarge = true;
        });
        break;
    }
  }

  ingredient(Enum ingredient) {
    switch (ingredient) {
      case Ingredient.milk:
        setState(() {
          isMilk = !isMilk;
        });
        break;
      case Ingredient.sugar:
        setState(() {
          isSugar = !isSugar;
        });
        break;
      case Ingredient.creame:
        setState(() {
          isCreame = !isCreame;
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height / 1.4;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      height: screenHeight,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        color: bgColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Ingridients",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: fontColor),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Bounce(
                      onPressed: () {
                        ingredient(Ingredient.milk);
                      },
                      child: Container(
                        padding: EdgeInsets.all(rSize(context, 8)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: primaryColor,
                          boxShadow: [
                            isMilk
                                ? BoxShadow(
                                    color: Colors.grey.shade600,
                                    spreadRadius: 1,
                                    blurRadius: 15)
                                : const BoxShadow()
                          ],
                        ),
                        child: Image.asset(
                          'assets/images/milk-box.png',
                          color: isMilk ? fontColor : null,
                          height: rSize(context, 40),
                          width: rSize(context, 40),
                        ),
                      ),
                    ),
                    Bounce(
                      onPressed: () {
                        ingredient(Ingredient.sugar);
                      },
                      child: Container(
                        padding: EdgeInsets.all(rSize(context, 8)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: primaryColor,
                          boxShadow: [
                            isSugar
                                ? BoxShadow(
                                    color: Colors.grey.shade600,
                                    spreadRadius: 1,
                                    blurRadius: 15)
                                : const BoxShadow()
                          ],
                        ),
                        child: Image.asset(
                          'assets/images/sugar.png',
                          color: isSugar ? fontColor : null,
                          height: rSize(context, 40),
                          width: rSize(context, 40),
                        ),
                      ),
                    ),
                    Bounce(
                      onPressed: () {
                        ingredient(Ingredient.creame);
                      },
                      child: Container(
                        padding: EdgeInsets.all(rSize(context, 8)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: primaryColor,
                          boxShadow: [
                            isCreame
                                ? BoxShadow(
                                    color: Colors.grey.shade600,
                                    spreadRadius: 1,
                                    blurRadius: 15)
                                : const BoxShadow()
                          ],
                        ),
                        child: Image.asset(
                          'assets/images/creame.png',
                          color: isCreame ? fontColor : null,
                          height: rSize(context, 40),
                          width: rSize(context, 40),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "Coffee Size",
                      style: TextStyle(
                          color: fontColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Bounce(
                              onPressed: () {
                                isSizeSelected(coffeeType.small);
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: primaryColor,
                                  boxShadow: [
                                    isSmall
                                        ? BoxShadow(
                                            color: Colors.grey.shade600,
                                            spreadRadius: 1,
                                            blurRadius: 15)
                                        : const BoxShadow()
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.coffee_outlined,
                                    size: 50,
                                    color: isSmall ? fontColor : bgColor,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              "Small",
                              style: TextStyle(
                                  color: isSmall ? fontColor : primaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Bounce(
                              onPressed: () {
                                isSizeSelected(coffeeType.medium);
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: primaryColor,
                                  boxShadow: [
                                    isMedium
                                        ? BoxShadow(
                                            color: Colors.grey.shade600,
                                            spreadRadius: 1,
                                            blurRadius: 15)
                                        : const BoxShadow()
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.coffee_outlined,
                                    size: 70,
                                    color: isMedium ? fontColor : bgColor,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              "Medium",
                              style: TextStyle(
                                  color: isMedium ? fontColor : primaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Bounce(
                              onPressed: () {
                                isSizeSelected(coffeeType.large);
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: primaryColor,
                                  boxShadow: [
                                    isLarge
                                        ? BoxShadow(
                                            color: Colors.grey.shade600,
                                            spreadRadius: 1,
                                            blurRadius: 15)
                                        : const BoxShadow()
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.coffee_outlined,
                                    size: 90,
                                    color: isLarge ? fontColor : bgColor,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              "Large",
                              style: TextStyle(
                                  color: isLarge ? fontColor : primaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Bounce(
                          onPressed: () {
                            decreaseCounter();
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                                color: primaryColor),
                            child: const Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Icon(
                                Icons.remove,
                                size: 30,
                                color: fontColor,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          coffeeQty.toString(),
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: fontColor),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Bounce(
                          onPressed: () {
                            increaseCounter();
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: primaryColor),
                            child: const Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Icon(
                                Icons.add,
                                size: 30,
                                color: fontColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 16.0, left: 16, right: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "\$20",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: fontColor,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: primaryColor),
                              borderRadius: BorderRadius.circular(10),
                              color: primaryColor),
                          width: double.infinity,
                          child: ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(primaryColor),
                                elevation: MaterialStatePropertyAll(0),
                                padding: MaterialStatePropertyAll(
                                    EdgeInsets.symmetric(vertical: 16))),
                            onPressed: () {
                              // Add your onPressed function here

                              Navigator.pop(
                                context,
                              );
                            },
                            child: const Text(
                              'Add to Cart',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: bgColor),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

enum coffeeType {
  small,
  medium,
  large,
}

enum Ingredient { milk, sugar, creame }
