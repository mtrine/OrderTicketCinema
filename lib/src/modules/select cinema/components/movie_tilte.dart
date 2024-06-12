import 'package:flutter/material.dart';
import 'package:movie_ticket_app/src/config/text_style.dart';

class MovieTitle extends StatelessWidget {
  const MovieTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: const EdgeInsets.only(left: 24, top: 8),
            child: const Text(
              'Ralp Breaks The Internet',
              style: TxtStyle.heading2,
            )),
        Container(
          margin: const EdgeInsets.only(top: 8, left: 24),
          child: Text(
            'FX Sudirman XXI',
            style: TxtStyle.heading3Light,
          ),
        )
      ],
    );
  }
}