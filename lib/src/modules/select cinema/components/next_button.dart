import 'package:flutter/material.dart';

import '../../../config/app_color.dart';
import '../../../constants/asset_path.dart';

class NextButton extends StatelessWidget {
  VoidCallback? onTap;
  NextButton({
    super.key,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top:16),
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: DarkTheme.blueMain,
              padding: const EdgeInsets.all(20)
          ),
          child: const ImageIcon(
              AssetImage(AssetPath.iconNext),
              color: DarkTheme.white,
              size:30
          ),
        )
    );
  }
}