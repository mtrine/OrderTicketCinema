import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_ticket_app/src/config/app_color.dart';
import 'package:movie_ticket_app/src/config/text_style.dart';
import 'package:movie_ticket_app/src/constants/asset_path.dart';
import 'package:movie_ticket_app/src/modules/select%20cinema/components/custom_header.dart';
import 'package:movie_ticket_app/src/widget/starWidget.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomHeader(size: size, content: 'Check Out\nMovie'),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                padding: const EdgeInsets.symmetric(vertical: 24),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: DarkTheme.white, width: 1))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        width: size.width / 2.5,
                        child: Image.asset(
                          AssetPath.posterRalphx2,
                          scale: 1.2,
                        ),
                      ),
                      MovieInfo(size: size)
                    ])),
            buildPriceTag('ID Order', '20082004'),
            buildPriceTag('Cinema', 'FX Sudirman XXI'),
            buildPriceTag('Date & Time', 'Sun March 24,16:51'),
            buildPriceTag('Seat Number', 'D7,D8,D9'),
            buildPriceTag('Price', '50.000 VND x 3'),
            buildPriceTag('Total', '150.000 VND'),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: DarkTheme.white, width: 1))),
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Your Wallet ',
                      style: TxtStyle.heading4Light,
                    ),
                    Text(
                      '200.000',
                      style:
                          TxtStyle.heading3.copyWith(color: DarkTheme.blueMain),
                    ),
                  ],
                )),
            Expanded(
                child: Center(
              child: Container(
                height: size.height / 16,
                width: size.width / 2,
                decoration: BoxDecoration(
                  color: DarkTheme.blueMain,
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Check Out',
                  style: TxtStyle.heading3,
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }

  Container buildPriceTag(String content, String price) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              content,
              style: TxtStyle.heading4Light,
            ),
            Text(
              price,
              style: TxtStyle.heading4,
            ),
          ],
        ));
  }
}

class MovieInfo extends StatelessWidget {
  const MovieInfo({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 8, bottom: 8),
          width: size.width,
          child: const Text('Ralp Breaks the Internet',
              style: TxtStyle.heading3Medium),
        ),
        Container(
            margin: const EdgeInsets.only(left: 8, bottom: 8),
            child: const Row(children: [
              StarWidget(),
              StarWidget(),
              StarWidget(),
              StarWidget(),
              StarWidget(),
              Text(
                '(5.0)',
                style: TxtStyle.heading4,
              )
            ])),
        Container(
          padding: const EdgeInsets.only(left: 8, bottom: 8),
          width: size.width,
          child: const Text('Action & Adventure Comedy',
              style: TxtStyle.heading4Light),
        ),
        Container(
          padding: const EdgeInsets.only(left: 8, bottom: 8),
          child: const Text(
            '1h41min',
            style: TxtStyle.heading4Light,
          ),
        )
      ],
    ));
  }
}
