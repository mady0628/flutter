import 'package:flutter/material.dart';
import 'package:temp_project/detail_box.dart';
import 'package:temp_project/line_need.dart';

void main(){
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Breakfast",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            leading: Container(
              margin: EdgeInsets.all(8.0),
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
            ),
            actions: [
              Container(
                margin: EdgeInsets.all(8.0),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(
                  Icons.share,
                  color: Colors.black,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Breakfast",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Today",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              //fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      Icon(
                        Icons.add,
                        size: 50,
                        color: Colors.black,
                      )
                    ],
                  ),
                  Divider(color: Colors.black),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "452",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 70,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "kcal",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                          color:Colors.lightGreen,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text(
                            "Normal",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      LineNeed(namec: "Protein", now: 18, sum: 80),
                      LineNeed(namec: "Fat", now: 20, sum: 60),
                      LineNeed(namec: "Carbs", now: 19, sum: 200)
                    ],
                  ),
                  DetailBox(name: "Egg", quantitative: "200", sumk: "436", pro: "12", fat: "6", carb: "9"),
                  DetailBox(name: "Salad", quantitative: "300", sumk: "120", pro: "3", fat: "3", carb: "6"),
                  DetailBox(name: "Chicken", quantitative: "500", sumk: "656", pro: "35", fat: "12", carb: "35"),
                  DetailBox(name: "Pork", quantitative: "400", sumk: "766", pro: "32", fat: "23", carb: "65"),
                  DetailBox(name: "Fish", quantitative: "300", sumk: "536", pro: "22", fat: "12", carb: "35"),
                  DetailBox(name: "Shrimp", quantitative: "220", sumk: "234", pro: "23", fat: "1", carb: "54"),
                  DetailBox(name: "Squid", quantitative: "100", sumk: "532", pro: "21", fat: "56", carb: "1"),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}