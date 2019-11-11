import 'location_fact_model.dart';

class LocationModel {
    final int id;
    final String name;
    final String imagePath;
    final String userItinerarySummary;
    final String tourPackageName;
    final List<LocationFactModel> facts;

    LocationModel({this.id, this.name, this.imagePath, this.userItinerarySummary,
        this.tourPackageName, this.facts});

    static List<LocationModel> fetchAll() {
        return [
            LocationModel(
                id: 1,
                name: 'Flutter Introduct',
                imagePath: 'assets/images/background.jpg',
                userItinerarySummary: '1pm',
                tourPackageName: 'tour 1',
                facts: []
            ),
            LocationModel(
                id: 2,
                name: 'Flutter Widgets',
                imagePath: 'assets/images/background.jpg',
                userItinerarySummary: '2pm',
                tourPackageName: 'tour 2',
                facts: [
                    LocationFactModel('Text',
                        'The Text widget lets you create a run of styled text within your application.'),
                    LocationFactModel('Row, Column',
                        'These flex widgets let you create flexible layouts in both the horizontal (Row) and vertical (Column) directions. The design of these objects is based on the web’s flexbox layout model.'),
                    LocationFactModel('Stack',
                        'Instead of being linearly oriented (either horizontally or vertically), a Stack widget lets you place widgets on top of each other in paint order. You can then use the Positioned widget on children of a Stack to position them relative to the top, right, bottom, or left edge of the stack. Stacks are based on the web’s absolute positioning layout model.'),
                    LocationFactModel('Container',
                        'The Container widget lets you create a rectangular visual element. A container can be decorated with a BoxDecoration, such as a background, a border, or a shadow. A Container can also have margins, padding, and constraints applied to its size. In addition, a Container can be transformed in three dimensional space using a matrix.'),
                ])
        ];
    }


    static LocationModel fetchById(int locationId) {
        List<LocationModel> locations = LocationModel.fetchAll();
        for (int i = 0; i < locations.length; i ++) {
            if (locations[i].id == locationId) {
                return locations[i];
            }
        }
        return null;
    }
}
