import 'package:flutter/material.dart';
import 'package:platzi_trips_app/home_trips.dart';
import 'package:platzi_trips_app/profile_trips.dart';
import 'package:platzi_trips_app/search_trips.dart';

class PlatziTrips extends StatefulWidget {
  @override
  _PlatziTripsState createState() => _PlatziTripsState();
}

class _PlatziTripsState extends State<PlatziTrips> {

  int indexTab = 0;

  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void _onTapTapped(int index) {
    setState(() {
      indexTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Viajes"),
      // ),
      // body: DescriptionPlace("Duwili Ella", 4, lorem),
      // body: ReviewList(),
      body: widgetsChildren[indexTab],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          onTap: _onTapTapped,
          currentIndex: indexTab,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Inicio")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text("Buscar")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Perfil")
            )
          ],
        ),
      ),
    );
  }
}