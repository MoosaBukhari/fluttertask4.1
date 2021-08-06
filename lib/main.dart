import 'package:fluttertask4/ExpandedView.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter task 4',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: ExpandCard(title: 'CardStackView'),
    );
  }
}
class ExpandCard extends StatefulWidget {
  ExpandCard({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _ExpandCardState createState() => _ExpandCardState();
}

class _ExpandCardState extends State<ExpandCard> {
  get handleClick => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: handleClick,
            itemBuilder: (BuildContext context) {
              return {''}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice, child: Text(choice),);
              },).toList();
            },
          ),
        ],
      ),
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
// scrollDirection: Axis.horizontal,
              itemCount: 1,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(0),
                      height: 600,
                      width: double.maxFinite,
                      child: Card(
                        elevation: 15,
                        child: SingleChildScrollView(
                          child: Column(
                          children: [
                            ExpandedView(context, Colors.red, 'Card One'),
                            ExpandedView(context, Colors.yellowAccent, 'Card Two'),
                            ExpandedView(context, Colors.green, 'Card Three'),
                            ExpandedView(context, Colors.blue, 'Card Four'),
                            ExpandedView(context, Colors.brown, 'Card Five'),
                            ExpandedView(context, Colors.purple, 'Card Six'),
                            ExpandedView(context, Colors.pink, 'Card Six'),
                            ExpandedView(context, Colors.amber, 'Card Six'),
                            ExpandedView(context, Colors.deepOrange, 'Card Six'),
                          ],
                          ),
                        ),
                      ),
                    );
                  },
                      ),
                    ),
    ],
                  ),
            ),
    );
  }
}