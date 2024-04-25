import 'package:flutter/material.dart';
import 'package:music_app/config/Colors.dart';
import 'package:music_app/utils/coffee_tile.dart';
import 'package:music_app/utils/coffee_types.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: bgColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 32,
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 240, 234, 232),
                          child: Text('AH'),
                          radius: 30,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shahzaib",
                              style: TextStyle(
                                  color: fontColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22),
                            ),
                            Text("Good Morning!",
                                style: TextStyle(
                                    color: fontColor,
                                    //fontWeight: FontWeight.w700,
                                    fontSize: 18)),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.search_outlined,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.notifications_outlined, size: 30),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xffCE9760),
                  ),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Get 20% Discount\nOn your First Order!",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: fontColor),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet consectetur.\nVestibulum eget blandit mattis",
                            style: TextStyle(
                              fontSize: 9,
                              color: fontColor,
                            ),
                          )
                        ],
                      ),
                      Image.asset(
                        "assets/images/promotionImage.png",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 25,
            child: ListView(scrollDirection: Axis.horizontal, children: const [
              CoffeeTypes(
                coffeeType: "Coffee",
                isSelected: true,
              ),
              CoffeeTypes(
                coffeeType: "Tea",
                isSelected: false,
              ),
              CoffeeTypes(
                coffeeType: "Smoothie",
                isSelected: false,
              ),
              CoffeeTypes(
                coffeeType: "Iced",
                isSelected: false,
              ),
            ]),
          ),

          const Expanded(
            child: CoffeeTile(),
          ),

          // Expanded(
          //   child: ListView(
          //     scrollDirection: Axis.horizontal,
          //     children: const [
          //       CoffeeTile(),
          //       CoffeeTile(),
          //       CoffeeTile(),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
