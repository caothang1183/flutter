import 'location_fact.dart';

class Location {
  final int id;
  final String name;
  final String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  static Location fetchById(int locationId) {
    List<Location> locations = Location.fetchAll();
    for(int i = 0; i < locations.length; i ++){
      if(locations[i].id == locationId){
        return locations[i];
      }
    }
    return null;
  }

  static List<Location> fetchAll() {
    return [
      Location(1, 'Flutter', 'assets/images/background.jpg', [
        LocationFact('Text',
            'The Text widget lets you create a run of styled text within your application.'),
        LocationFact('Row, Column',
            'These flex widgets let you create flexible layouts in both the horizontal (Row) and vertical (Column) directions. The design of these objects is based on the web’s flexbox layout model.'),
      ]),
      Location(2, 'Flutter', 'assets/images/background.jpg', [
        LocationFact('Stack',
            'Instead of being linearly oriented (either horizontally or vertically), a Stack widget lets you place widgets on top of each other in paint order. You can then use the Positioned widget on children of a Stack to position them relative to the top, right, bottom, or left edge of the stack. Stacks are based on the web’s absolute positioning layout model.'),
        LocationFact('Container',
            'The Container widget lets you create a rectangular visual element. A container can be decorated with a BoxDecoration, such as a background, a border, or a shadow. A Container can also have margins, padding, and constraints applied to its size. In addition, a Container can be transformed in three dimensional space using a matrix.'),
      ])
    ];
  }
}
