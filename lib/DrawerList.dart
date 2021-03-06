import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  final String listText;
  final IconData icon;

  DrawerList(this.listText, this.icon);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.purpleAccent[200],
      customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(150.0),
              bottomRight: Radius.circular(150.0))),
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 65.0,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                icon,
                size: 30.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Text(
                listText,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
