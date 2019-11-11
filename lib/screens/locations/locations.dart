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
            body: ListView.builder(
                itemCount: locations.length,
                itemBuilder: (context, index) =>
                    _itemBuilder(context, locations[index]),
            ),
        );
    }

    _onLocationTap(BuildContext context, int locationId) {
        Navigator.pushNamed(
            context, DetailRoute, arguments: {"id": locationId});
    }

    Widget _itemBuilder(BuildContext context, LocationModel location) {
        return GestureDetector(
            onTap: () => _onLocationTap(context, location.id),
            child: Container(child: Text(location.name)));
    }
}
