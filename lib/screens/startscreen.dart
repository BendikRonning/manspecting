import 'package:flutter/material.dart';
import 'package:standardapp/widgets/PageWidget.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class StartScreen extends StatefulWidget {
  static const String id = 'start_screen';
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  Color containerColor = Color(0xFFFDE1D7);
  int _selectedItemPosition = 0;
  SnakeBarStyle snakeBarStyle = SnakeBarStyle.floating;
  SnakeShape snakeShape = SnakeShape.circle;
  ShapeBorder bottomBarShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(25)));
  double elevation = 0;
  bool showSelectedLabels = true;
  bool showUnselectedLabels = true;
  Color selectedItemColor = Colors.white;
  Color selectionColor = Colors.black;
  EdgeInsets padding = EdgeInsets.all(12);
  TextStyle navigasjonsBarTextStyle = TextStyle(fontSize: 11);
  SnakeShape customSnakeShape = SnakeShape(
      shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))),
      centered: true);
  ShapeBorder customBottomBarShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25), topRight: Radius.circular(25)),
  );
  ShapeBorder customBottomBarShape1 = BeveledRectangleBorder(
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25), topRight: Radius.circular(25)),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      extendBody: true,
      appBar: AppBar(
        centerTitle: true,
        brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.settings, color: Colors.black),
              onPressed: () {}),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: AnimatedContainer(
        color: containerColor,
        duration: Duration(seconds: 1),
        child: PageView(
          onPageChanged: _onPageChanged,
          children: <Widget>[
            PagerPageWidget(
              text: 'StineBabe er den diggeste som finnes!!',
              description: 'Swipe til høyre for å høre mer..',
              ikon: Icon(Icons.airline_seat_flat_angled),
            ),
            PagerPageWidget(
              text: 'Hun er dronningen av Skien...',
              description: 'Oki love u oki hade.',
              ikon: Icon(Icons.dashboard),
            ),
            PagerPageWidget(
              text: '...og den fineste personen i hele verden!',
              description:
                  'Kombiner farger og tiler for å lage nais desing oki!',
              ikon: Icon(Icons.email),
            ),
            PagerPageWidget(
              text: 'StineBabe er best!',
              description: 'Dette blir desidnet på mine apper!',
              ikon: Icon(Icons.hd),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SnakeNavigationBar(
        style: snakeBarStyle,
        snakeShape: snakeShape,
        selectedIconColor: selectedItemColor,
        snakeColor: selectionColor,
        showUnselectedLabels: showUnselectedLabels,
        showSelectedLabels: showSelectedLabels,
        elevation: 10,
        shape: bottomBarShape,
        padding: padding,
        currentIndex: _selectedItemPosition,
        onPositionChanged: (index) =>
            setState(() => _selectedItemPosition = index),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('home', style: navigasjonsBarTextStyle)),
          BottomNavigationBarItem(
              icon: Icon(Icons.school),
              title: Text('knowledge', style: navigasjonsBarTextStyle)),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_list),
              title: Text('checklist', style: navigasjonsBarTextStyle)),
          BottomNavigationBarItem(
              icon: Icon(Icons.photo_camera),
              title: Text('pictures', style: navigasjonsBarTextStyle)),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer),
              title: Text('offers', style: navigasjonsBarTextStyle))
        ],
      ),
    );
  }

  _onPageChanged(int page) {
    switch (page) {
      case 0:
        setState(() {
          containerColor = Color(0xFFFDE1D7);
          snakeBarStyle = SnakeBarStyle.floating;
          snakeShape = SnakeShape.circle;
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
          snakeBarStyle = SnakeBarStyle.floating;
          snakeShape = SnakeShape.circle;
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
          snakeBarStyle = SnakeBarStyle.floating;
          snakeShape = SnakeShape.circle;
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
          snakeBarStyle = SnakeBarStyle.floating;
          snakeShape = SnakeShape.circle;
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
