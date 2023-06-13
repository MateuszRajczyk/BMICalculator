import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            const Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReuseableCard(),
                  ),
                  Expanded(
                    child: ReuseableCard(),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: ReuseableCard(),
            ),
            const Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReuseableCard(),
                  ),
                  Expanded(
                    child: ReuseableCard(),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ));
  }
}

class ReuseableCard extends StatelessWidget {
  const ReuseableCard(
      {this.color = const Color(0xFF1D1E33),
      //this.cardChild = null,
      super.key});

  final Color color;
  //final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      //child: cardChild,
    );
  }
}
