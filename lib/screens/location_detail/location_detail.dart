import 'package:flutter/material.dart';
import 'package:flutter_tutorial/models/location_model.dart';
import 'package:flutter_tutorial/screens/locations/tile_overlay.dart';
import 'package:flutter_tutorial/screens/style.dart';
import 'package:flutter_tutorial/widgets/location_tile.dart';

import '../../widgets/image_banner.dart';
import 'text_section.dart';

class LocationDetail extends StatelessWidget {
    final int _locationId;

    LocationDetail(this._locationId);

    @override
    Widget build(BuildContext context) {
        final location = LocationModel.fetchById(_locationId);

        return Scaffold(
            appBar: AppBar(
                title: Text(
                    location.name,
                    style: TextStyle(
                        color: TextColorLight,
                    ),
                ),
                backgroundColor: TextColorDark,
            ),
            body: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                        ImageBanner(location.imagePath),
                        Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 4.0),
                            child: LocationTile(
                                location: location,
                                darkTheme: false,
                            ),
                        )
                    ]
                        ..addAll(textSectionList(location)),
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
