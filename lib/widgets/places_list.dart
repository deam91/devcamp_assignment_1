import 'package:devcamp/data/models.dart';
import 'package:devcamp/widgets/place_details.dart';
import 'package:flutter/material.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({Key? key, required this.places}) : super(key: key);
  final List<Place> places;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemExtent: 100,
        itemCount: places.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => PlaceDetails(place: places[index]),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.all(5),
              child: Column(
                children: [
                  Expanded(
                    child: CircleAvatar(
                      maxRadius: 50,
                      backgroundColor: Colors.black26,
                      backgroundImage:
                          NetworkImage(places[index].image, scale: 1.0),
                    ),
                  ),
                  Text(
                    places[index].name,
                    style: const TextStyle(
                        fontSize: 14,
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
