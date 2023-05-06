import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.greenAccent[100],
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 80.0),
                Text(
                  'Top picks for you!!\nImpressive Collection For Your Dream Home\n\n',
                  textAlign: TextAlign.center,
                  style: TextStyle(height: 1.5, fontSize: 25.0),
                ),
                SizedBox(height: 80.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(200),
                          child: Image.asset(
                            'images/sofa.png',
                            height: 200,
                          ),
                        ),
                        Text(
                          'Sofa Sets\n\n',
                          textAlign: TextAlign.center,
                          style: TextStyle(height: 1.5, fontSize: 25.0),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(200),
                          child: Image.asset(
                            'images/room.png',
                            height: 200,
                          ),
                        ),
                        Text(
                          'Wooden beds\n\n',
                          textAlign: TextAlign.center,
                          style: TextStyle(height: 1.5, fontSize: 25.0),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(200),
                          child: Image.asset(
                            'images/img3.jpg',
                            height: 200,
                          ),
                        ),
                        Text(
                          'Multicolored Sets\n\n',
                          textAlign: TextAlign.center,
                          style: TextStyle(height: 1.5, fontSize: 25.0),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(500),
                          child: Image.asset(
                            'images/wd.jpg',
                            height: 200,
                          ),
                        ),
                        Text(
                          'Grand sideboards\n\n',
                          textAlign: TextAlign.center,
                          style: TextStyle(height: 1.5, fontSize: 25.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
