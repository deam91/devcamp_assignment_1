import 'package:flutter/material.dart';

import '../data/models.dart';

class PlaceDetails extends StatelessWidget {
  const PlaceDetails({Key? key, required this.place}) : super(key: key);
  final Place place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        leading: const BackButton(),
        centerTitle: true,
        title: Text(
          place.name,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image.network(
              place.image,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text(
              place.description,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
