import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            _createPage1(),
            _createPage2(),
          ],
        ),
      ),
    );
  }

  Widget _createPage1() {
    return Stack(
      children: <Widget>[_backgroundColor(), _backgroundImage(), _createText()],
    );
  }

  Widget _createPage2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          onPressed: () {},
          color: Colors.blue,
          shape: StadiumBorder(),
          textColor: Colors.white,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Text(
              "Welcome",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ),
      ),
    );
  }

  Widget _backgroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _backgroundImage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/images/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _createText() {
    final textStyle = TextStyle(color: Colors.white, fontSize: 50.0);

    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Text(
            '11º',
            style: textStyle,
          ),
          Text(
            'Friday',
            style: textStyle,
          ),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            size: 70.0,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
