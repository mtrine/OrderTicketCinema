import 'package:flutter/material.dart';
import '../../../config/text_style.dart';
import '../../../models/cast.dart';
class Casteritem extends StatelessWidget {
  const Casteritem({
    super.key,
    required this.size,
    required this.cast,
  });

  final Size size;
  final Cast cast;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding:EdgeInsets.only(left:10,bottom: 4),
            child:Container(
              width:size.width/4.5,
              height:size.width/4.5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image:AssetImage(cast.profileImageUrl),
                  )
              ),
            )
        ),
        Text(cast.name,style: TxtStyle.heading4Light,),
      ],
    );
  }
}