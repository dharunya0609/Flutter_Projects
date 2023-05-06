import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('AMAZING SALE ON FURNITURE UPTO 55% OFF, CLAIM NOW\n',
                style: TextStyle(fontSize: 30, color: Colors.red[700])),
            Text(
                'Besides Tables,Matresses,Wardrobes starting at  Rs.145690/- only Grab your Offers on prior!\n'),
            Icon(
              Icons.email,
              size: 50,
              color: Colors.blueGrey[800],
            ),
            SizedBox(height: 20),
            Text(
              'Email',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'elegant@furnitureshop.com\n',
              style: TextStyle(fontSize: 18),
            ),
            Icon(
              Icons.phone,
              size: 50,
              color: Colors.blueGrey[800],
            ),
            SizedBox(height: 20),
            Text(
              'Contact',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '+91 89076 23451\n',
              style: TextStyle(fontSize: 18),
            ),
            Icon(
              Icons.location_city,
              size: 50,
              color: Colors.blueGrey[800],
            ),
            SizedBox(height: 20),
            Text(
              'Location',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '1/34B abc street, efg city ,pin-987654;\n',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
