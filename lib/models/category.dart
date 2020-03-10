import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final String catImage;

  const Category ({
    @required this.id,
    @required this.title,
    @required this.catImage
  });
}