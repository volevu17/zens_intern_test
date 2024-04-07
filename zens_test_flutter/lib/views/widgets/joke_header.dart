import 'package:flutter/material.dart';
import '../../utilities/color_constants.dart';

class JokeHeader extends StatelessWidget {
  const JokeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      child: Row(
        children: <Widget>[
          Image.asset('assets/images/logo.png', height: 50),
          const Spacer(),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                'Handcrafted by',
                style: TextStyle(color: ColorUtil.grey, fontSize: 10),
              ),
              Text(
                'Jim HLS',
                style: TextStyle(
                    color: ColorUtil.black,
                    fontSize: 10,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(width: 2),
          ClipOval(
            child: Image.asset(
              "assets/images/sunflower.jpg",
              height: 45,
              width: 45,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
