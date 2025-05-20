import 'package:mental_health/features/music/domain/entities/song.dart';

class SongModel extends Song {
  SongModel({
    required super.id,
    required super.title,
    required super.author,
    required super.songLink,
    required super.imageLink
  });

  factory SongModel.fromJson(Map<String, dynamic> json){
    return SongModel(
        id: json['id'],
        title: json['title'],
        author: json['author'],
        songLink: json['songLink'],
        imageLink: json['imageLink']
    );
  }
}