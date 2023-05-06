import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController dateInput = TextEditingController();
  int d = 0, m = 0, y = 0;
  String days1 = "", month1 = "", year1 = "";
  String formattedDate = "";
  String a="";
  String b="";
  String c="";


  void f1() async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        //DateTime.now() - not to allow to choose before today.
        lastDate: DateTime.now());

    if (pickedDate != null) {
      print(pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
      formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
      setState(
            () {
          d = int.parse(DateFormat('dd').format(pickedDate));
          m = int.parse(DateFormat('MM').format(pickedDate));
          y = int.parse(DateFormat('yy').format(pickedDate));
          int d1 = int.parse(DateFormat('dd').format(DateTime.now()));
          int m1 = int.parse(DateFormat('MM').format(DateTime.now()));
          int y1 = int.parse(DateFormat('yy').format(DateTime.now()));
          int day = finddays(m1, y1);
          if (d1 - d >= 0)
            days1 = (d1 - d).toString() + "";
          else {
            days1 = (d1 + day - d).toString();
            m1 = m1 - 1;
          }
          if (m1 - m >= 0)
            month1 = (m1 - m).toString();
          else {
            month1 = (m1 + 12 - m).toString();
            y1 = y1 - 1;
          }
          year1 = (y1 - y).toString();
          a="Years";
          b="Months";
          c="Days";
        },
      );

      print(formattedDate);
    }
  }

  int finddays(int m2, int y2) {
    int day2 = 0;
    if (m2 == 1 ||
        m2 == 3 ||
        m2 == 5 ||
        m2 == 7 ||
        m2 == 8 ||
        m2 == 10 ||
        m2 == 12)
      day2 = 31;
    else if (m2 == 4 || m2 == 6 || m2 == 9 || m2 == 11)
      day2 = 30;
    else {
      if (y2 % 4 == 0) {
        day2 = 29;
      } else
        day2 = 28;
    }
    return day2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Age Calculator'),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
          elevation: 0,
        ),
        body: Container(
          color: Colors.black87,
          child: Column(
            children: [
              Container(
                height: 400,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.purpleAccent,
                        Colors.white70,
                      ],
                    ),
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(0), bottom: Radius.circular(70))),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            f1();
                          },
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 40),
                              backgroundColor: Color.fromRGBO(10, 10, 25, 1.0)),
                          label: Text(
                            'Choose Date',
                            style: TextStyle(fontSize: 30),
                          ),
                          icon: Icon(
                            Icons.date_range_rounded,
                            size: 30,
                          ),
                        ),
                      ),
                      Text(
                        formattedDate,
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),SizedBox(height: 30.0,),
              Center(
                child: Text(
                  "Your Age is",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.amberAccent,
                  ),
                ),
              ),SizedBox(height: 15.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        year1,
                        style: TextStyle(
                            fontSize: 45,
                            color: Colors.amber[800],
                            fontWeight: FontWeight.bold),
                      ),SizedBox(height: 10.0,),
                      Text(
                        month1,
                        style: TextStyle(
                            fontSize: 45,
                            color: Colors.amber[800],
                            fontWeight: FontWeight.bold),
                      ),SizedBox(height: 10.0,),
                      Text(
                        days1,
                        style: TextStyle(
                            fontSize: 45,
                            color: Colors.amber[800],
                            fontWeight: FontWeight.bold),
                      ),


                    ],
                  ),SizedBox(height: 10.0,),
                  Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        a,
                        style: TextStyle(
                            fontSize: 45,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),SizedBox(height: 10.0,),
                      Text(
                        b,
                        style: TextStyle(
                            fontSize: 45,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0,),
                      Text(
                        c,
                        style: TextStyle(
                            fontSize: 45,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),


                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}