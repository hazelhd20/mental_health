import 'dart:convert';

import 'package:mental_health/features/meditation/domain/entities/mood_message.dart';

class MoodMessageModel extends MoodMessage {
  MoodMessageModel({required super.text});

  factory MoodMessageModel.fromJson(Map<String, dynamic> json) {
    final decoded = jsonDecode(json['text']);
    return MoodMessageModel(text: decoded['advice']);
  }
}
