import 'dart:io';

import 'package:uuid/uuid.dart';

const uuid = Uuid();

class PlaceLocation {
  const PlaceLocation({
    required this.latitude,
    required this.longtitude,
    required this.address,
  });
  final double latitude;
  final double longtitude;
  final String address;
}

class Place {
  Place({
    required this.title,
    required this.image,
    required this.location,
    String? id,
  }) : id = id ?? uuid.v4();
  final String title;
  final String id;
  final File image;
  final PlaceLocation location;
}
