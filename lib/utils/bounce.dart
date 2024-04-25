/*
 * Created on Thu Apr 18 2024
 * Created by Tejas Surve
 *
 * Copyright (c) Tejas Surve
 */


import 'package:flutter/material.dart';

class Bounce extends StatefulWidget {
  final Function onPressed;
  final Widget child;
  final Duration duration;
  final bool isDisabled;

  const Bounce({
    super.key,
    required this.child,
    this.duration = const Duration(milliseconds: 100),
    required this.onPressed,
    this.isDisabled = false,
  });

  @override
  BounceState createState() => BounceState();
}

class BounceState extends State<Bounce> with SingleTickerProviderStateMixin {
  late double _scale;
  late AnimationController _animationController;

  Function get onPressed => widget.onPressed;
  Duration get userDuration => widget.duration;

  @override
  void initState() {
    super.initState();
    _scale = 1.0;
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _onTap() {
    if (!widget.isDisabled) {
      _animationController.forward();

      Future.delayed(userDuration, () {
        _animationController.reverse();
        onPressed();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _animationController.value;
    return GestureDetector(
      onTap: _onTap,
      child: Transform.scale(
        scale: _scale,
        child: widget.child,
      ),
    );
  }
}
