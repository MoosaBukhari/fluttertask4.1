import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandedView extends StatelessWidget {
  ExpandedView(this.context, this.colour, this.cardData);
  final BuildContext context;
  final Color colour;
  final String cardData;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: colour,
        child: ExpansionTile(
          title: Text('TAP '),
          children: <Widget>[
            Container(
              child: Text('$cardData'),
              height: MediaQuery.of(context).size.height * .05,
            )
          ],
        ),
      ),
    );
  }
}