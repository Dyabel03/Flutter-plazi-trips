import 'package:flutter/material.dart';
import 'package:platzi_trips_app/profile/profile_background.dart';
import 'package:platzi_trips_app/profile/profile_info.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ProfileBackground(),
        ProfileInfo()
      ],
    );
  }
}