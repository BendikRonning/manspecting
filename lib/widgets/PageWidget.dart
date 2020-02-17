import 'package:flutter/material.dart';

class PagerPageWidget extends StatelessWidget {
  final String text;
  final String description;
  final Icon ikon;
  final TextStyle titleStyle =
      TextStyle(fontSize: 40, fontFamily: 'SourceSerifPro');
  final TextStyle subtitleStyle = TextStyle(
      fontSize: 20, fontFamily: 'Ubuntu', fontWeight: FontWeight.w200);

  PagerPageWidget({
    Key key,
    this.text,
    this.description,
    this.ikon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.all(24),
        child: SafeArea(
          child: OrientationBuilder(builder: (context, orientation) {
            return orientation == Orientation.portrait
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text(text, style: titleStyle),
                          SizedBox(height: 16),
                          Text(description, style: subtitleStyle),
                        ],
                      ),
                      ikon
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Text(text, style: titleStyle),
                            Text(description, style: subtitleStyle),
                          ],
                        ),
                      ),
                      Expanded(child: ikon)
                    ],
                  );
          }),
        ),
      );
}
