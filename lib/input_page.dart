import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}


const myColor = Color(0xFF1E1D32);
const ContainerBottomHeight = 80.0;
const accentColor = Color(0xFFE83D66);
class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                ReusableCard(
                  colour: myColor,
                ),
                ReusableCard(
                  colour: myColor,
                ),
              ],
            ),
          ),
          ReusableCard(
            colour: myColor,
          ),

          Expanded(
            child: Row(
              children: <Widget>[
                ReusableCard(
                  colour: myColor,
                ),
                ReusableCard(
                  colour: myColor,
                ),

              ],
            ),
          ),
          Container(
            height: ContainerBottomHeight,
            width: double.infinity,
            color: accentColor,
            margin: EdgeInsets.only(top: 10.0),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
 ReusableCard({@required this.colour});
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}

