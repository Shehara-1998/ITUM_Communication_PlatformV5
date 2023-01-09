import 'package:flutter/material.dart';

class ReminderTile extends StatefulWidget {
   final String title;
   final String description;
   //final String dateTime;
  const ReminderTile({Key? key,
     required this.title,
     required this.description,
     //required this.dateTime
  }) : super(key: key);

  @override
  _ReminderTileState createState() => _ReminderTileState();
}

class _ReminderTileState extends State<ReminderTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      child: Container(
        padding: const EdgeInsets.only(top: 17, bottom: 17,left: 20, right: 20),
        decoration:  BoxDecoration(
          color:  Colors.white,
          borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 0.2,
                  blurRadius: 5,
                  offset: const Offset(0.0, 5.0)
              )
            ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Title: ${widget.title}"),
            Text("Description: ${widget.description}"),
            Text("DateTime: ${widget.description}"),
          ],
        ),
      ),
    );
  }
}
