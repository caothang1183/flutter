import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
    final String _path;
    final double height;

    ImageBanner(this._path, {this.height = 200.0});

    @override
    Widget build(BuildContext context) {
        return Container(
            constraints: BoxConstraints.expand(
                height: height,
            ),
            decoration: BoxDecoration(color: Colors.grey),
            child: Image.asset(_path, fit: BoxFit.cover),
        );
    }
}
