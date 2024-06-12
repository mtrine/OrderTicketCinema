import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_ticket_app/src/modules/movie%20detail/movie_detail_page.dart';
import 'package:movie_ticket_app/src/modules/select%20cinema/select_cinema.dart';
import 'package:movie_ticket_app/src/widget/starWidget.dart';
import '../../../config/app_color.dart';
import '../../../config/text_style.dart';
import '../../../models/movie.dart';
class SliderComponents extends StatelessWidget {
  const SliderComponents ({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: movies.map((movie) {
          return Builder(
            builder: (context) {
              return GestureDetector(
                onTap:(){
                   Navigator.push(context, MaterialPageRoute(
                       builder: (context)=>SelectCinemaPage()));
                },
                child: Stack(
                  children: [
                    Container(
                      width: size.width,
                      padding: const EdgeInsets.only(left:10,bottom: 24),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          image:DecorationImage(
                            image: AssetImage(movie.backgroundImg),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          gradient: LinearGradient(
                              begin:Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                GradientPalette.black1,
                                GradientPalette.black2,
                              ]
                
                          )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: size.width,
                              padding:const EdgeInsets.only(bottom:8,left:8),
                              child: Text(movie.title,style: TxtStyle.heading1,)
                          ),
                          Container(
                            margin:const EdgeInsets.only(left:8,bottom:8),
                            child:const Row(
                                children:[
                                  StarWidget(),
                                  StarWidget(),
                                  StarWidget(),
                                  StarWidget(),
                                  StarWidget(),
                                  Text('(5.0)',style: TxtStyle.heading4,)
                                ]
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          );
        }).toList(),
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
        ));
  }
}
