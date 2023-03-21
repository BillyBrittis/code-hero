import 'package:code_hero/app/home/entities/events_model.dart';
import 'package:code_hero/app/home/entities/series_model.dart';

class CharacterModel {
  final int id;
  final String name;
  final String description;
  final String image;
  final List<SeriesModel> series;
  final List<EventsModel> events;

  CharacterModel({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.series,
    required this.events,
  });

  factory CharacterModel.fromJson(Map json) {

    return CharacterModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      image: json['thumbnail']['path'] + '.' + json['thumbnail']['extension'],
      series: List<SeriesModel>.from(json['series']['items'].map((m) => SeriesModel.fromJson(m)).toList()),
      events: List<EventsModel>.from(json['events']['items'].map((m) => EventsModel.fromJson(m)).toList()),
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'description': description,
    'image': image,
    'series': series,
  };
}