import 'package:flutter/material.dart';
import 'package:platzi_trips_app/card_image_list.dart';
import 'package:platzi_trips_app/profile/profile_card_image.dart';
import 'package:platzi_trips_app/profile/profile_card_list_images.dart';

class ProfileBackground extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;

    final bg = Container(
      width: screenWidth,
      height: screenHeight * 0.58,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1)
          ],
          begin: FractionalOffset(1.0, 0.0),
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp
        )
      ),
      child: FittedBox(
        fit: BoxFit.none,
        alignment: Alignment(-1.9, -0.8),
        child: Container(
          width: screenHeight,
          height: screenHeight,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.05),
            borderRadius: BorderRadius.circular(screenHeight / 2)
          ),
        ),
      ),
    );

    return Stack(
      alignment: Alignment(-1.0, -1.0),
      children: <Widget>[
        bg,
        ProfileCardListImages()
      ],
    );
  }
}