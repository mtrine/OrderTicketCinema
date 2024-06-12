import 'package:flutter/material.dart';
import '../../../config/app_color.dart';
import '../../../config/text_style.dart';
import '../../../constants/asset_path.dart';

class SelectCountry extends StatelessWidget {
  const SelectCountry({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16,horizontal: 24),
      height: size.height/14,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: DarkTheme.white),
      ),
      child: const Row(
        children: [
          Expanded(
              child:TextField(
                decoration: InputDecoration(
                    hintText:'Select Your Country',
                    hintStyle: TxtStyle.heading3Light,
                    border: InputBorder.none,
                    icon: ImageIcon(
                      AssetImage(AssetPath.iconLocation),
                      color: DarkTheme.white,
                    )
                ),

              ) ),
          Padding(
            padding: EdgeInsets.only(right:8),
            child: Icon(
              Icons.keyboard_arrow_down,
              color: DarkTheme.white,
              size:36,),
          )
        ],
      ),

    );
  }
}