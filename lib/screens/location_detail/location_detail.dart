import 'package:flutter/material.dart';
import 'package:flutter_tutorial/models/location.dart';
import 'text_section.dart';
import 'image_banner.dart';

class LocationDetail extends StatelessWidget {
  final int _locationId;

  LocationDetail(this._locationId);

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchById(_locationId);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Tutorial',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ImageBanner(location.imagePath),
          ]..addAll(textSectionList(location)),
        ),
      ),
    );
  }

  List<Widget> textSectionList(Location location) {
    return location.facts
        .map((item) => TextSection(item.title, item.text))
        .toList();
  }
}
