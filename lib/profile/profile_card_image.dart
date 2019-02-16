import 'package:flutter/material.dart';
import 'package:platzi_trips_app/floating_action_button_green.dart';

class ProfileCardImage extends StatelessWidget {

  String pathImage = "assets/img/mountain_stars.jpeg";

  ProfileCardImage(this.pathImage);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    String _txt ="""Mountain water, camp.
Sonery & Photograpy""";

    final img = Container(
      height: 210.0,
      width: screenWidth,
      margin: EdgeInsets.only(
        top: 12.0,
        bottom: 80.0,
        left: 16.0,
        right: 16.0
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        ),
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0)
          )
        ]
      ),
    );

    final cardInfoImg = Container(
      padding: EdgeInsets.all(16.0),
      height: 130.0,
      width: 300.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0)
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              bottom: 8.0
            ),
            child: Text(
              "Knuckles Mountains Range",
              style: TextStyle(
                fontFamily: "Lato",
                fontWeight: FontWeight.bold,
                fontSize: 20.0
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: 8.0
            ),
            child: Text(
              _txt,
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 13.0,
                color: Colors.black26
              ),
            ),
          ),
          Container(
            child: Text(
              "Steps 123,123,123",
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 16.8,
                color: Colors.orange,
                fontWeight: FontWeight.w600
              ),
            ),
          )
        ],
      ),
    );

    final cardInfoFloatBtn = Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[
        cardInfoImg,
        FloationactionButtonGreen()
      ],
    );

    return Stack(
      alignment: Alignment(0.0, 0.8),
      children: <Widget>[
        img,
        cardInfoFloatBtn
      ],
    );
  }
}