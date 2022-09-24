class CardItem {
  CardItem({
    required this.title,
    required this.image,
    required this.description,
    required this.places,
  });

  final String title;
  final String image;
  final String description;
  final List<Place> places;
}

class Place {
  Place({
    required this.name,
    required this.image,
    required this.description,
  });

  final String image;
  final String name;
  final String description;
}
