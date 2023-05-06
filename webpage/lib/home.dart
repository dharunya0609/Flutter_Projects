import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.greenAccent[100],
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Text(
                  'THE FURNITURE EVERYONE LOVES',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Image.asset(
                  'images/img1.png',
                  height: 400,
                  width: 500,
                ),
                Text(
                  '\n\nWhether you are looking for a cozy sectional sofa for your family room, a sleek dining table for your kitchen, or a luxurious bed for your bedroom, we have something that will meet your needs. Our selection includes pieces made from a variety of materials, including wood, metal, and leather, so you are sure to find something that suits your taste and budget',
                  textAlign: TextAlign.center,
                  style: TextStyle(height: 1.5, fontSize: 25.0),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
