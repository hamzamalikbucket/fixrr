import 'dart:convert';
import 'package:flutter/material.dart';

class ViewFixrrModel {
  late int id;
  late String name;
  late String email;
  late String password;
  late String profileImg;
  late String aboutMe;
  late int maxDistance;
  late String servicesProvided;
  late String userType;
  late String lat;
  late String lon;
  late String createdAt;
  late String updatedAt;
  late int distance;
  late String mapUrl;

  ViewFixrrModel({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.profileImg,
    required this.aboutMe,
    required this.maxDistance,
    required this.servicesProvided,
    required this.userType,
    required this.lat,
    required this.lon,
    required this.createdAt,
    required this.updatedAt,
    required this.distance,
    required this.mapUrl,
  });

  factory ViewFixrrModel.fromJson(Map<String, dynamic> json) {
    return ViewFixrrModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
      profileImg: json['porfile_img'],
      aboutMe: json['about_me'],
      maxDistance: json['max_distance'],
      servicesProvided: json['services_prodvides'],
      userType: json['user_type'],
      lat: json['lat'],
      lon: json['lon'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      distance: json['distance'],
      mapUrl: json['map_url'],
    );
  }

  Image getImageFromBase64() {
    try {
      return Image.memory(base64Decode(profileImg));
    } catch (e) {
      return Image.asset('assets/images/placeholder.png'); // Provide a placeholder image in case of error
    }
  }
}
