import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final TextStyle titleStyle =
      TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final TextStyle subtitleStyle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _createImage(),
            _createTitle(),
            _createActions(),
            _createText(),
          ],
        ),
      ),
    );
  }

  Widget _createTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Text1', style: titleStyle),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text('Text2', style: subtitleStyle),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              '40',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _createImage() {
    return Container(
      width: double.infinity,
      child: Image(
        height: 200.0,
        fit: BoxFit.cover,
        image: NetworkImage(
            'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg'),
      ),
    );
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _createAction(Icons.call, 'Call'),
        _createAction(Icons.near_me, 'Route'),
        _createAction(Icons.share, 'Share'),
      ],
    );
  }

  Widget _createAction(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 15.0, color: Colors.red),
        )
      ],
    );
  }

  Widget _createText() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          "Laboris do dolore laboris amet commodo consequat proident. Cupidatat nostrud exercitation nostrud ipsum consectetur. Eiusmod proident mollit cillum consectetur qui aliquip dolore dolore. Sunt minim consectetur tempor laborum esse ea tempor incididunt do.",
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
