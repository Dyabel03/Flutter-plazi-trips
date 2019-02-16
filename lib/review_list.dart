import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {

  List<String> photosName = [
    "assets/img/photo0.jpg",
    "assets/img/photo1.jpg",
    "assets/img/photo2.png"
  ];

  List<Widget> getListReviews() {
    List<Widget> listReviews = new List();
    for (var i = 0; i < 3; i++) {
      listReviews.add(Review(photosName[i], "$i Felipe Chaparro", "${(i + 1)} review ${(i + 3)} photos", "$i Theres is an amazing place in Sri Lanka"));
    }

    return listReviews;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: getListReviews()
    );
  }
}