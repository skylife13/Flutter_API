import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: EdgeInsets.only(top: 50.0, left: 20.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Gmail",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.red[300],
                  ),
                  //textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        ListTile(
          onTap: () {},
          leading: Icon(
            Icons.inbox,
            color: Colors.black,
          ),
          trailing: Text("99+"),
          title: Text("Inbox"),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(
            Icons.star_border,
            color: Colors.black,
          ),
          title: Text("Starred"),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(
            Icons.snooze,
            color: Colors.black,
          ),
          title: Text("Snoozed"),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(
            Icons.label_important,
            color: Colors.black,
          ),
          title: Text("Important"),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(
            Icons.inbox,
            color: Colors.black,
          ),
          title: Text("draft"),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(
            Icons.inbox,
            color: Colors.black,
          ),
          title: Text("sent"),
        )
      ],
    );
  }
}
