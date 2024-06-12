import 'package:flutter/material.dart';
import 'package:movie_ticket_app/src/config/app_color.dart';
import 'package:movie_ticket_app/src/models/movie.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key, this.child});
  final Widget? child;
  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  TicketStates _ticketStates = TicketStates.idle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 48,
      child: GestureDetector(
        onTap: () {
          setState(() {
            _ticketStates = _ticketStates == TicketStates.idle
                ? TicketStates.active
                : TicketStates.idle;
          });
        },
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: _ticketStates == TicketStates.idle
                  ? DarkTheme.greyBackground
                  : DarkTheme.blueMain),
          child: widget.child ?? Container(),
        ),
      ),
    );
  }
}