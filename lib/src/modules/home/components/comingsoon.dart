import 'package:flutter/material.dart';
import 'package:movie_ticket_app/src/modules/movie%20detail/movie_detail_page.dart';

import '../../../models/movie.dart';
class ComingSoon extends StatelessWidget {
  const ComingSoon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: movies.map((e){
            return Builder(
                builder: (context){
                  return Expanded(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MovieDetailPage()));
                        },
                        child: Container(
                          margin:const EdgeInsets.symmetric(horizontal: 10),
                          child: Image.asset(e.posterImg,fit: BoxFit.cover,),
                        ),
                      ));
                });
          }).toList(),
        )
    );
  }
}