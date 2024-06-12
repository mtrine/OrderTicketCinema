import 'package:flutter/material.dart';
import 'package:movie_ticket_app/src/config/text_style.dart';
import 'package:movie_ticket_app/src/constants/asset_path.dart';
class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:const EdgeInsets.only(top: 64, left: 24, right: 24),
        child: SizedBox(
          height: size.height/10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Find Your Best\nMovie',style: TxtStyle.heading1SemiBold,),
              CircleAvatar(
                radius:size.height/24,
                backgroundImage: const AssetImage(AssetPath.iconProfile),

              )
            ],
          ),
        )
    );
  }
}