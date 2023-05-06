import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'About Us',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'At Furniture Shop, we believe that great design should be accessible to everyone. That’s why we offer a wide range of stylish and affordable furniture for every room in your home. Our pieces are designed to last, and we’re committed to providing the highest level of customer service to make your shopping experience as easy and enjoyable as possible.\n',
                style: TextStyle(
                  fontSize: 16.0,
                  height: 1.5,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'What Makes Us Different',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Affordable luxury thats customizable and handmade, not pre-made. Isnt it challenging to find a high quality hand-made furniture to match your style and space ? We too couldnot believe how challenging it was to find that perfect piece. So we decided to make a better way to shop that perfect piece!.\n'
                ,style: TextStyle(
                  fontSize: 16.0,
                  height: 1.5,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'High Quality Materials',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Every piece is handmade using the best quality material. We choose from Kiln dried hardwood to top grain PU leathers, every product goes through 66 point quality check inspection before its packed and shipped. So its worth the wait. We promise you, our products will be loved by you for a life-time.\n'
                ,style: TextStyle(
                  fontSize: 16.0,
                  height: 1.5,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Our Mission',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Our mission is to provide high-quality, stylish furniture at affordable prices, while delivering exceptional customer service. We’re committed to sustainability and ethical business practices, and we work with suppliers who share our values. We believe that everyone deserves to live in a beautiful, comfortable home, and we’re here to help you achieve that.',
                style: TextStyle(
                  fontSize: 16.0,
                  height: 1.5,
                  color: Colors.grey[700],
                ),


              ),

            ],
          ),
        ),
      ),
    );
  }
}
