import 'package:ecell_3years/button.dart';
import 'package:ecell_3years/textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

class HomePage extends StatelessWidget {
  final _textController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: _height,
              width: _width,
              child: Image.asset(
                'assets/theatre-min.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 25.0,
                horizontal: _width < 1300 ? _width * 0.20 : _width * 0.35,
              ),
              padding: const EdgeInsets.all(8.0),
              height: _height,
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "E-Cell NITA",
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: _width * 0.045,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 40.0),
                    CustomTextField(
                      textEditingController: _textController,
                    ),
                    SizedBox(height: 30.0),
                    Container(
                      width: _width,
                      child: CustomButton(
                        onTap: () async {
                          if (_formKey.currentState.validate()) {
                            await js.context.callMethod("open", ["https://meet.google.com/gsx-syug-rbi"]);
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 30.0,
              left: 30.0,
              child: Container(
                height: _width < 1300 ? _width * 0.20 : _width * 0.10,
                width: _width < 1300 ? _width * 0.20 : _width * 0.10,
                child: Image.asset(
                  'assets/logo.png',
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
