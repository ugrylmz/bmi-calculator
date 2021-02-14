import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}


const activeCardColor = Color(0xFF1E1D33);
const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
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
                  cardChild: IconContent(
                    label: 'MALE',
                    icon: FontAwesomeIcons.mars,
                  ),
                  colour: activeCardColor,
                ),
                ReusableCard(
                  cardChild: IconContent(
                    label: 'FEMALE',
                    icon: FontAwesomeIcons.venus,
                  ),
                  colour: activeCardColor,
                ),
              ],
            ),
          ),
          ReusableCard(
            colour: activeCardColor,
          ),

          Expanded(
            child: Row(
              children: <Widget>[
                ReusableCard(
                  colour: activeCardColor,
                ),
                ReusableCard(
                  colour: activeCardColor,
                ),

              ],
            ),
          ),
          Container(
            height: bottomContainerHeight,
            width: double.infinity,
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.calculator,
                  size:30.0,
                  color:Colors.white,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'CALCULATE THE BMI',
                  style: TextStyle(fontSize: 25),

                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}

