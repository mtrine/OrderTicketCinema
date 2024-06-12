import 'package:flutter/material.dart';

import '../../../models/movie.dart';
import 'cast_item.dart';


class CastBar extends StatelessWidget {
  const CastBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: movies[0].casters.map((e)=>
            Builder(
                builder:(context)=>Casteritem(size: size,cast:e) )
        ).toList(),
      ),
    );
  }
}