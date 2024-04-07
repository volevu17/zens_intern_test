import 'package:flutter/material.dart';
import '../../utilities/color_constants.dart';

class JokeFooter extends StatelessWidget {
  const JokeFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        Divider(),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'This app is created as part of Hlsolutions program. The materials contained on this website are provided for general information only and do not constitute any form of advice. HLS assumes no responsibility for the accuracy of any particular statement and accepts no liability for any loss or damage which may arise from reliance on the information contained on this site.',
            style: TextStyle(
                color: ColorUtil.grey,
                fontWeight: FontWeight.w500,
                fontSize: 12.0),
            textAlign: TextAlign.center,
          ),
        ),
        Text(
          'Copyright 2021 HLS',
          style: TextStyle(color: ColorUtil.black, fontSize: 14.0),
        ),
      ],
    );
  }
}
