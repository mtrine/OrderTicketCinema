import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_ticket_app/src/config/app_color.dart';

class ArrowBackButton extends StatelessWidget {
  const ArrowBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 16, top: 4),
        child: IconButton(
          icon: const FaIcon(
            FontAwesomeIcons.arrowLeft,
            color: DarkTheme.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ));
  }
}
