import 'package:flutter/material.dart';
import 'package:music_app/config/Colors.dart';

class CoffeeTypes extends StatefulWidget {
  final String coffeeType;
  final bool isSelected;
  const CoffeeTypes(
      {super.key, required this.coffeeType, required this.isSelected});

  @override
  State<CoffeeTypes> createState() => _CoffeeTypesState();
}

class _CoffeeTypesState extends State<CoffeeTypes> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Text(
        widget.coffeeType,
        style: TextStyle(
          color: widget.isSelected ? primaryColor : fontColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
