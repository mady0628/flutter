import 'dart:math';

import 'package:flutter/material.dart';
import 'package:temp_project/calendar_box.dart';
import 'package:temp_project/calendar_task.dart';
void main(){
  runApp(const MainApp());
}
@override
class MainApp extends StatefulWidget{
  const  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late int _count;
  @override
  void initState(){
    super.initState();
    _count=Random().nextInt(6);
  }
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> events = [
      {
        "time": "07:00",
        "session": "AM",
        "content": "CTDL & GT",
        "note": "Nguyễn Duy Phương",
      },
      {
        "time": "09:00",
        "session": "AM",
        "content": "Lí thuyết thông tin",
        "note": "Phạm Văn Sự",
      },
      {
        "time": "13:00",
        "session": "PM",
        "content": "Tư tưởng HCM",
        "note": "Phạm Thị Khánh",
      },
      {
        "time": "15:00",
        "session": "PM",
        "content": "Toán rời rạc 2",
        "note": "Nguyễn Tất Thắng",
      },
      {
        "time": "15:00",
        "session": "PM",
        "content": "Toán rời rạc 2",
        "note": "Nguyễn Tất Thắng",
      },
      {
        "time": "15:00",
        "session": "PM",
        "content": "Toán rời rạc 2",
        "note": "Nguyễn Tất Thắng",
      },
      {
        "time": "15:00",
        "session": "PM",
        "content": "Toán rời rạc 2",
        "note": "Nguyễn Tất Thắng",
      },
    ];
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          floatingActionButton: InkWell(
            onTap:() => setState(() {
              _count=Random().nextInt(6);
            }),
            child: Container(
              color: Colors.red,
              height: 50,
              width: 50,
            ),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CalendarBox(text1: "20", text2: "MON"),
                          CalendarBox(text1: "21", text2: "TUE"),
                          CalendarBox(text1: "22", text2: "WED"),
                          CalendarBox(text1: "23", text2: "THU"),
                          CalendarBox(text1: "24", text2: "FRI"),
                          CalendarBox(text1: "25", text2: "SAT"),
                          CalendarBox(text1: "26", text2: "SUN")
                        ],
                      ),
                    ),
                  const SizedBox(
                    height: 100,
                  ),
                  SizedBox(
                    height: 500,
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return CalendarTask(
                            time: events[_count]["time"],
                            content: events[_count]["content"],
                            note: events[_count]["note"],
                            session: events[_count]["session"],);
                      },
                      itemCount: 1,
                      separatorBuilder: (context, index) {
                        return Divider(
                          thickness: 2,
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ),
      )
    );
  }
}