import 'package:flutter/material.dart';
import 'package:flutter_tutorial/models/location_model.dart';
import 'text_section.dart';
import 'image_banner.dart';

class LocationDetail extends StatelessWidget {
  final int _locationId;

  LocationDetail(this._locationId);

  @override
  Widget build(BuildContext context) {
    final location = LocationModel.fetchById(_locationId);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail Location ' + this._locationId.toString(),
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

  List<Widget> textSectionList(LocationModel location) {
    return location.facts
        .map((item) => TextSection(item.title, item.text))
        .toList();
  }
}
