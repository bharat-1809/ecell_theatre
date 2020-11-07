import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final _border = OutlineInputBorder(
  borderRadius: BorderRadius.circular(30.0),
  borderSide: BorderSide(
    color: Colors.white,
    style: BorderStyle.solid,
    width: 1.5,
  ),
);

class CustomTextField extends StatelessWidget {
  CustomTextField({@required this.textEditingController});

  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {

    final _height = MediaQuery.of(context).size.height;

    return TextFormField(
      controller: textEditingController,
      decoration: InputDecoration(
        border: _border,
        disabledBorder: _border,
        enabledBorder: _border,
        focusedBorder: _border.copyWith(
          borderSide: BorderSide(
            color: Colors.white,
            style: BorderStyle.solid,
            width: 2.0,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 25,
          vertical: _height < 1000 ? _height * 0.018 : _height * 0.027,
        ),
        hintText: "Enter Hall number",
        hintStyle: GoogleFonts.montserrat(
          color: Colors.white,
          fontWeight: FontWeight.w300,
        ),
      ),
      cursorColor: Colors.white,
      cursorWidth: 1.5,
      style: GoogleFonts.montserrat(
        color: Colors.white,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
