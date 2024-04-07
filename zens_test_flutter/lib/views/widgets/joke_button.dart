// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';

import '../../utilities/color_constants.dart';

class JokeButton extends StatelessWidget {
  final bool allJokesShown;
  final Function(bool) onVote;

  const JokeButton({
    Key? key,
    required this.allJokesShown,
    required this.onVote,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (allJokesShown) {
      return Container();
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: () => onVote(true),
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorUtil.blue,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
          child: const Text('This is Funny!',
              style: TextStyle(color: ColorUtil.white)),
        ),
        const SizedBox(width: 16),
        ElevatedButton(
          onPressed: () => onVote(false),
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorUtil.green,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
          child: const Text('This is not funny.',
              style: TextStyle(color: ColorUtil.white)),
        ),
      ],
    );
  }
}
