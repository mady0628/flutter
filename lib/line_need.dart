import 'package:flutter/material.dart';

class LineNeed extends StatelessWidget {
  final String namec;
  final int now,sum;
  const LineNeed({super.key,required this.namec, required this.now, required this.sum});

  @override
  Widget build(BuildContext context) {
    switch(namec){
      case "Protein":
    return SizedBox(
      width: 120,
      height: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            namec,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 100,
            height: 5,
            child: Row(
              children: [
                Expanded(
                  flex: now,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                    ),
                  )
                ),
                Expanded(
                  flex: sum,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                  ))
              ],
            ),
          ),
          Row(
            children: [
              Text(
                now.toString(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Text(
                "/",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Text(
                sum.toString(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Text(
                "g",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ],
          )
        ],
      ),
    );
  case "Fat":
    return SizedBox(
      width: 120,
      height: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            namec,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 100,
            height: 5,
            child: Row(
              children: [
                Expanded(
                  flex: now,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                    ),
                  )
                ),
                Expanded(
                  flex: sum-now,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                  ))
              ],
            ),
          ),
          Row(
            children: [
              Text(
                now.toString(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Text(
                "/",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Text(
                sum.toString(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Text(
                "g",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ],
          )
        ],
      ),
    );
  default:
  return SizedBox(
      width: 120,
      height: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            namec,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 100,
            height: 5,
            child: Row(
              children: [
                Expanded(
                  flex: now,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                  )
                ),
                Expanded(
                  flex: sum,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                  ))
              ],
            ),
          ),
          Row(
            children: [
              Text(
                now.toString(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Text(
                "/",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Text(
                sum.toString(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Text(
                "g",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ],
          )
        ],
      ),
    );     
  }
  }
}