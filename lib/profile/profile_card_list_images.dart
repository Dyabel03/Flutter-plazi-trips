import 'package:flutter/material.dart';
import 'package:platzi_trips_app/profile/profile_card_image.dart';

class ProfileCardListImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 350.0,
      margin: EdgeInsets.only(
        top: 280.0
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          ProfileCardImage("assets/img/mountain_stars.jpeg"),
          ProfileCardImage("assets/img/mountain.jpeg"),
          ProfileCardImage("assets/img/river.jpeg"),
          ProfileCardImage("assets/img/beach_palm.webp"),
        ],
      ),
    );
  }
}