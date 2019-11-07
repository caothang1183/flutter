import 'package:flutter/material.dart';
import 'package:flutter_tutorial/screens/location_detail/location_detail.dart';
import 'package:flutter_tutorial/screens/locations/locations.dart';
import 'package:flutter_tutorial/screens/style.dart';

const HomeRoute = '/';
const DetailRoute = '/detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(textTheme: TextTheme(title: AppBarTextStyle)),
        textTheme: TextTheme(
          title: TitleTextStyle,
          body1: Body1TextStyle,
        ),
      ),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.arguments) {
        case HomeRoute:
          screen = Locations();
          break;
        case DetailRoute:
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
  ThemeData _theme() {

  }
}
