import 'package:flutter/material.dart';
import '../../utilities/color_constants.dart';

class JokeContent extends StatelessWidget {
  final String joke;

  const JokeContent({
    super.key,
    required this.joke,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Text(
        joke,
        style: const TextStyle(color: ColorUtil.black, fontSize: 16.0),
        textAlign: TextAlign.center,
      ),
    );
  }
}
