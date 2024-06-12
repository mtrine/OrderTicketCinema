import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_ticket_app/src/config/app_color.dart';
import 'package:movie_ticket_app/src/config/text_style.dart';
import '../../models/movie.dart';
import 'components/categoryBar.dart';
import 'components/comingsoon.dart';
import 'components/promo.dart';
import 'components/searchBar.dart';
import 'components/header.dart';
import 'components/slider.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //header
            HomeHeader(size: size),
            //search bar
            SearchMovie(size: size),
            //category bar
            CategoryBar(size: size),
            //title
            buildPadding('Now Playing'),
            //slide
            SliderComponents (size: size),
            buildPadding('Coming Soon'),
            const ComingSoon(),
            buildPadding('Promo'),
            Promo(size: size)
          ],
        ),
      ),
    );
  }

  Padding buildPadding(String contents) {
    return Padding(
              padding:const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Text(contents,style: TxtStyle.heading2,),
          );
  }
}













