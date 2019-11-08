import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/models/location_model.dart';
import 'package:flutter_tutorial/screens/app.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = LocationModel.fetchAll();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Locations',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: locations
            .map(
              (location) => GestureDetector(
                child: Row(

                  children: <Widget>[
                     Container(
                      constraints: BoxConstraints.expand(
                        height: 100.0,
                        width: 150.0,
                      ),
                      decoration: BoxDecoration(color: Colors.grey),
                      child: Image.asset(location.imagePath, fit: BoxFit.cover),
                    ),
                  ],
                ),
                onTap: () => _onLocationTap(context, location.id),
              ),
            )
            .toList(),
      ),
    );
  }

  _onLocationTap(BuildContext context, int locationId) {
    Navigator.pushNamed(context, DetailRoute, arguments: {"id": locationId});
  }
}
