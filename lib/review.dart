import 'package:flutter/material.dart';

class Review extends StatelessWidget {

  String pathImg = "assets/img/photo0.jpg";
  String nameUser = "Andrés Felipe Chaparro";
  String detailUser = "1 review 5 photos";
  String comment = "Theres is an amazing place in Sri Lanka";

  Review(this.pathImg, this.nameUser, this.detailUser, this.comment);

  @override
  Widget build(BuildContext context) {
    // INFO: Con la clase ya diseñada en flutter
    // final circleAvatar = CircleAvatar(
    //   backgroundImage: AssetImage(pathImg),
    // );
    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ) ,
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(pathImg),
          fit: BoxFit.cover
        )
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(nameUser,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 17.0,
            fontFamily: "Lato"
          ),
        ),
    );

    final userDetail = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Row(
        children: <Widget>[
          Text(detailUser,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 13.0,
              fontFamily: "Lato",
              color: Colors.black54
            ),
          ),
          Icon(
            Icons.star,
            color: Color(0xFFf2C611),
            size: 13.0,
          ),
          Icon(
            Icons.star,
            color: Color(0xFFf2C611),
            size: 13.0,
          ),
          Icon(
            Icons.star,
            color: Color(0xFFf2C611),
            size: 13.0,
          ),
          Icon(
            Icons.star,
            color: Color(0xFFf2C611),
            size: 13.0,
          )
        ],
      ),
    );

    final commentUser = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(comment,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 13.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.w900
          ),
        ),
    );

    final userDetal = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userDetail,
        commentUser
      ],
    );
    return Row(
      children: <Widget>[
        photo,
        userDetal
      ],
    );
  }
}