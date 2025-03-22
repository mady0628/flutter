import 'dart:math';
import 'package:flutter/material.dart';

class CalendarTask extends StatelessWidget {
  final String time,content,note,session;
  const CalendarTask({super.key, required this.time, required this.content, required this.note, required this.session});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0,8,0,8),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                time,
              ),
              Text(
                session,
              )
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            color: Color.fromRGBO(
              Random().nextInt(256),
              Random().nextInt(256),
              Random().nextInt(256),
              1,),
              height: 70,
              width: 10,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                content,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(note),
            ],
          ),
        ],)
    );
  }
}