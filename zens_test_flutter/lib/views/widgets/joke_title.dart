import 'package:flutter/material.dart';
import '../../utilities/color_constants.dart';

class JokeTitle extends StatelessWidget {
  const JokeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorUtil.green,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: const Column(
        children: <Widget>[
          Text(
            'A joke a day keeps the doctor away',
            style: TextStyle(fontSize: 18, color: ColorUtil.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Text(
            'If you joke wrong way, your teeth have to pay. (Serious)',
            style: TextStyle(fontSize: 12, color: ColorUtil.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
