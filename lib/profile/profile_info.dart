import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final titulo = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 10.0,
            bottom: 18.0
          ),
          child: Text(
            "Profile",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28.0,
              fontFamily: "Lato",
              fontWeight: FontWeight.w900
            ),
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.settings,
            color: Color(0xFFa9aae3),
            size: 13.0,
          ),
          onPressed: () {},
        )
      ],
    );

    final info = Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            border: Border.all(
              color: Colors.white,
              width: 2.0
            )
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/img/photo4.jpg"),
            backgroundColor: Colors.white,
            radius: 40.0,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  bottom: 4.0
                ),
                child: Text(
                  "Andrés Felipe Chaparro",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700
                  ),
                ),
              ),
              Text(
                "mail@domain.com",
                style: TextStyle(
                  color: Color(0xFFa9aae3)
                ),
              )
            ],
          ),
        )
      ],
    );

    final btns = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        ButtonsProfileInfo(true, Icons.bookmark_border, Color(0xFF584CD1), Colors.white),
        ButtonsProfileInfo(true, Icons.live_tv, Color(0xFF584CD1), Color(0xFFa9aae3)),
        ButtonsProfileInfo(false, Icons.add, Color(0xFF584CD1), Colors.white),
        ButtonsProfileInfo(true, Icons.mail, Color(0xFF584CD1), Color(0xFFa9aae3)),
        ButtonsProfileInfo(true, Icons.person, Color(0xFF584CD1), Color(0xFFa9aae3))
      ],
    );

    return Container(
      margin: EdgeInsets.only(
        top: 50.0,
        left: 28.0,
        right: 16.0
      ),
      child: Column(
        children: <Widget>[
          titulo,
          info,
          Container(
            margin: EdgeInsets.only(
              top: 16.0
            ),
            child: btns,
          )
        ],
      ),
    );
  }
}

class ButtonsProfileInfo extends StatelessWidget {

  bool isMini = false;
  IconData icon = Icons.tag_faces;
  Color color = Color(0xFF584CD1);
  Color bg = Colors.white;

  ButtonsProfileInfo(this.isMini, this.icon, this.color, this.bg);

  @override
  Widget build(BuildContext context) {

    return FloatingActionButton(
      mini: isMini,
      onPressed: () {},
      backgroundColor: bg,
      elevation: 0.0,
      child: Icon(
        icon,
        color: color
      ),
    );
  }
}