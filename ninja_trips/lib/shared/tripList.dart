import 'package:flutter/material.dart';
import 'package:ninja_trips/models/Trip.dart';
import 'package:ninja_trips/screens/details.dart';

class TripList extends StatefulWidget {
  @override
  _TripListState createState() => _TripListState();
}

class _TripListState extends State<TripList> {
  GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  List<Widget> _tripTiles = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _addTrips();
    });
  }

  void _addTrips() {
    // get data from db
    List<Trip> _trips = [
      Trip(title: 'Red velvet', price: '350', nights: '3', img: 'beach2.jpg'),
      Trip(title: 'Donuts', price: '400', nights: '5', img: 'donut.jpg'),
      Trip(title: 'Waffles', price: '750', nights: '2', img: 'waffles.jpg'),
      Trip(title: 'Black Forest', price: '600', nights: '4', img: 'bf.jpg'),
    ];

    Future ft = Future((){});
    _trips.forEach((Trip trip) {
      ft = ft.then((data) {
        return Future.delayed(const Duration(milliseconds: 100), () {
          _tripTiles.add(_buildTile(trip));
          _listKey.currentState.insertItem(_tripTiles.length - 1);
        });
      });
    });
  }

  Widget _buildTile(Trip trip) {
    return ListTile(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Details(trip: trip)));
      },
      contentPadding: EdgeInsets.all(25),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('${trip.nights} Packs',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black87)),
          Text(trip.title, style: TextStyle(fontSize: 20, color: Colors.black45)),
        ],
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Hero(
          tag: 'location-img-${trip.img}',
          child: Image.asset(
            'images/${trip.img}',
            height: 50.0,
          ),
        ),
      ),
      trailing: Text('\$${trip.price}'),
    );
  }

  Tween<Offset> _offset = Tween(begin: Offset(1, 0), end: Offset(0, 0));

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
        key: _listKey,
        initialItemCount: _tripTiles.length,
        itemBuilder: (context, index, animation) {
          return SlideTransition(
            position: animation.drive(_offset),
            child: _tripTiles[index],
          );
        });
  }
}
