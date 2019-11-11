import 'package:flutter/material.dart';
import 'package:flutter_tutorial/models/location_model.dart';
import 'package:flutter_tutorial/screens/style.dart';

class LocationTile extends StatelessWidget {
    final LocationModel location;
    final bool darkTheme;

    LocationTile({this.location, this.darkTheme = false});

    @override
    Widget build(BuildContext context) {
        final textColor = this.darkTheme ? TextColorLight : TextColorDark;

        return Container(
            padding: EdgeInsets.symmetric(horizontal: DefaultPaddingHorizontal),
            height: LocationTileHeight,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text(
                        location.name.toUpperCase(),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.title.copyWith(color: textColor),
                    ),
                    Text(
                        location.userItinerarySummary.toUpperCase(),
                        style: Theme.of(context).textTheme.subtitle,
                    ),
                    Text(
                        location.tourPackageName.toUpperCase(),
                        style: Theme.of(context).textTheme.caption.copyWith(color: textColor),
                    ),
                ]),
        );
    }
}