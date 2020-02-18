import 'package:flutter/material.dart';
import 'package:standardapp/widgets/PageWidget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color containerColor = Color(0xFFFDE1D7);
  int _selectedItemPosition = 0;
  ShapeBorder bottomBarShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(25)));
  double elevation = 0;
  bool showSelectedLabels = true;
  bool showUnselectedLabels = true;
  Color selectedItemColor = Colors.white;
  Color selectionColor = Colors.black;
  EdgeInsets padding = EdgeInsets.all(12);
  TextStyle navigasjonsBarTextStyle = TextStyle(fontSize: 11);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      color: containerColor,
      duration: Duration(seconds: 1),
      child: PageView(
        onPageChanged: _onPageChanged,
        children: <Widget>[
          Center(
            child: Container(
              child: Text('Hallo'),
            ),
          ),
          PagerPageWidget(
            text: 'Hun er dronningen av Skien...',
            description: 'Oki love u oki hade.',
            ikon: Icon(Icons.dashboard),
          ),
          PagerPageWidget(
            text: '...og den fineste personen i hele verden!',
            description: 'Kombiner farger og tiler for å lage nais desing oki!',
            ikon: Icon(Icons.email),
          ),
          PagerPageWidget(
            text: 'StineBabe er best!',
            description: 'Dette blir desidnet på mine apper!',
            ikon: Icon(Icons.hd),
          ),
        ],
      ),
    );
  }

  _onPageChanged(int page) {
    switch (page) {
      case 0:
        setState(() {
          containerColor = Color(0xFFFDE1D7);
          padding = EdgeInsets.all(12).copyWith();
          bottomBarShape = RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)));
          showSelectedLabels = true;
          showUnselectedLabels = true;
        });
        break;
      case 1:
        setState(() {
          containerColor = Colors.blue[100];
          padding = EdgeInsets.all(12).copyWith();
          bottomBarShape = RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)));
          showSelectedLabels = true;
          showUnselectedLabels = true;
        });
        break;

      case 2:
        setState(() {
          containerColor = Colors.green[100];
          padding = EdgeInsets.all(12).copyWith();
          bottomBarShape = RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)));
          showSelectedLabels = true;
          showUnselectedLabels = true;
        });
        break;
      case 3:
        setState(() {
          containerColor = Colors.yellow[100];
          padding = EdgeInsets.all(12).copyWith();
          bottomBarShape = RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)));
          showSelectedLabels = true;
          showUnselectedLabels = true;
        });
        break;
    }
  }
}
