import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  theme: ThemeData(primaryColor: Color(0xff070707)),
  home: MyApp(),
  debugShowCheckedModeBanner: false,
));
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  double _height = 170.0;
  double _weight = 75.0;
  int _bmi = 0;
  String _condition = 'Select Data';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: size.height * 0.40,
              width: double.infinity,
              decoration: new BoxDecoration(color: Colors.green[200]),
              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "BMI CALCULATOR",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0),
                  ),
                  // Text(
                  //   "Calculator",
                  //
                  //   style: TextStyle(color: Colors.black, fontSize: 40.0,fontWeight: FontWeight.bold),
                  // ),
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      child: Text(
                        "PREDICTED BMI : $_bmi",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                        text: "Condition : ",
                        style: TextStyle(color: Colors.black, fontSize: 25.0),
                        children: <TextSpan>[
                          TextSpan(
                            text: "$_condition",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ]),
                  )
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Text(
                      "Choose Data",
                      style: TextStyle(
                          color: Color(0xff070707),
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    RichText(
                      text: TextSpan(
                          text: "Heigth : ",
                          style: TextStyle(
                              color: Color(0xFF403f3d), fontSize: 25.0),
                          children: <TextSpan>[
                            TextSpan(
                              text: "$_height cm",
                              style: TextStyle(
                                  color: Color(0xFF403f3d),
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Slider(
                      value: _height,
                      min: 0,
                      max: 250,
                      onChanged: (height) {
                        setState(() {
                          _height = height;
                        });
                      },
                      divisions: 250,
                      label: "$_height",
                      activeColor: Color(0xFF403f3d),
                      inactiveColor: Colors.green,
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    RichText(
                      text: TextSpan(
                          text: "Weight : ",
                          style: TextStyle(
                              color: Color(0xFF403f3d), fontSize: 25.0),
                          children: <TextSpan>[
                            TextSpan(
                              text: "$_weight kg",
                              style: TextStyle(
                                  color: Color(0xFF403f3d),
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Slider(
                      value: _weight,
                      min: 0,
                      max: 300,
                      onChanged: (weight) {
                        setState(() {
                          _weight = weight;
                        });
                      },
                      divisions: 300,
                      label: "$_weight",
                      activeColor: Color(0xFF403f3d),
                      inactiveColor: Colors.green,
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Container(
                        width: size.width * 0.1,
                        height: size.height*0.08,
                        child: ClipRRect(

                          borderRadius: BorderRadius.circular(50.0),
                          child: ElevatedButton(
                            child: const Text('Calculate'),
                            onPressed: () {
                              setState(() {
                                //18.5 - 25 Healthy 25-30 Overweight >30 Obesity
                                _bmi = (_weight /
                                    ((_height / 100) * (_height / 100)))
                                    .round()
                                    .toInt();
                                if (_bmi >= 18.5 && _bmi <= 25) {
                                  _condition = " Normal";
                                } else if (_bmi > 25 && _bmi <= 30) {
                                  _condition = " Overweight";
                                } else if (_bmi > 30) {
                                  _condition = " Obesity";
                                } else {
                                  _condition = " Underweight";
                                }
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                            ),
                          ),
                        )),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}