import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_ticket_app/src/config/app_color.dart';
import 'package:movie_ticket_app/src/config/text_style.dart';
import 'package:movie_ticket_app/src/constants/asset_path.dart';
import 'package:movie_ticket_app/src/models/movie.dart';
import 'package:movie_ticket_app/src/modules/select%20cinema/check_out_page.dart';
import 'package:movie_ticket_app/src/modules/select%20cinema/components/arrow_back.dart';
import 'package:movie_ticket_app/src/modules/select%20cinema/components/movie_tilte.dart';
import 'package:movie_ticket_app/src/modules/select%20cinema/components/toggle_button.dart';

class SelectSeatPage extends StatelessWidget {
  const SelectSeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ArrowBackButton(),
          const MovieTitle(),
          //seat status bar
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildSeatStatusBar(DarkTheme.darkBackground, 'Available'),
                buildSeatStatusBar(DarkTheme.greyBackground, 'Booked'),
                buildSeatStatusBar(DarkTheme.blueMain, 'Your Seat'),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: seatRow
                    .map((row) => Builder(
                        builder: (context) => Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: seatNumber
                                  .map((number) => Builder(
                                      builder: (context) => ToggleButton(
                                            child: Text(
                                              row + number,
                                              style: TxtStyle.heading3Medium,
                                            ),
                                          )))
                                  .toList(),
                            )))
                    .toList(),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child:const Text(
              'Screen',
              style: TxtStyle.heading3Medium,
            ),
          ),
          Center(child: Image.asset(AssetPath.screenx2)),
          Padding(
            padding: const EdgeInsets.only(bottom: 16, left: 24, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Total Price', style: TxtStyle.heading4Light),
                    Text('150.000 VND', style: TxtStyle.heading3Medium),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const CheckOutPage()));
                  },
                  child: Container(
                    height: size.height / 16,
                    width: size.width / 3,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: DarkTheme.blueMain,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Text(
                      'Book Ticket',
                      style: TxtStyle.heading3Medium,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }

  Row buildSeatStatusBar(Color color, String status) {
    return Row(
      children: [
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(4)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            status,
            style: TxtStyle.heading4,
          ),
        ),
      ],
    );
  }
}
