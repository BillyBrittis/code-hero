class EventsModel {
  final String name;
  final String resourceURI;

  EventsModel({
    required this.name,
    required this.resourceURI,
  });

  factory EventsModel.fromJson(Map json) {
    return EventsModel(
      name: json['name'],
      resourceURI: json['resourceURI'],
    );
  }

  Map<String, dynamic> toJson() => {
    'name': name,
    'resourceURI': resourceURI,
  };
}