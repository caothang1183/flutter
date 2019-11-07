import 'package:flutter/material.dart';
import 'package:flutter_tutorial/models/location.dart';
import 'package:flutter_tutorial/screens/app.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();
    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: ListView(
        children: locations
            .map(
              (location) => GestureDetector(
                child: Text(location.name),
                onTap: () => _onLocationTap(context, location.id),
              ),
            )
            .toList(),
      ),
    );
  }

  _onLocationTap(BuildContext context, int locationId) {
    Navigator.pushNamed(context, HomeRoute, arguments: {
        "id" : locationId
    });
  }
}
