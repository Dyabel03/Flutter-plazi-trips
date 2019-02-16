import 'package:flutter/material.dart';
import 'button_custom.dart';

class DescriptionPlace extends StatelessWidget {

  final String namePlace;
  final int stars;
  final String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: EdgeInsets.only(
        top: 343.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final starOutline = Container(
      margin: EdgeInsets.only(
        top: 343.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Colors.black45,

      ),
    );

    List<Widget> getStars() {
      List<Widget> starList = new List();
      for (var i = 0; i < 5; i++) {
        if (i > (stars - 1)) {
          starList.add(starOutline);
        } else {
          starList.add(star);
        }
      }
      return starList;
    }

    final contentText = Container(
        margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0
        ),
        child: Text(descriptionPlace,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 15.0,
          color: Colors.black54
        ),),
      );

    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 340.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: getStars(),
        )
      ],
    );

    final placeDescription = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        titleStars,
        contentText,
        ButtonCustom()
      ]);

    return placeDescription;
  }
}