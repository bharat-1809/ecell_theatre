import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.onTap});

  final Function onTap;

  @override
  Widget build(BuildContext context) {

    final _height = MediaQuery.of(context).size.height;

    return FlatButton(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      onPressed: onTap,
      child: Text(
        "Start The Show",
        style: GoogleFonts.montserrat(
          color: Colors.black,
          fontWeight: FontWeight.w300,
          fontSize: 15.0
        ),
      ),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
        side: BorderSide(
          color: Colors.white,
          style: BorderStyle.solid,
          width: 1.5,
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 25.0,
        vertical: _height < 1000 ? _height * 0.020 : _height * 0.030,
      ),
    );
  }
}
