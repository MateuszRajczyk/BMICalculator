import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  const ReuseableCard(
      {this.color = const Color(0xFF1D1E33),
      required this.cardChild,
      this.onPress,
      super.key});

  final Color color;
  final Widget cardChild;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
