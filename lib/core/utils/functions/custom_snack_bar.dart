import 'package:flutter/material.dart';

// ignore: strict_top_level_inference
void customSnackBar(context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
}
