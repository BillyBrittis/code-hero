class SeriesModel {
  final String name;
  final String resourceURI;

  SeriesModel({
    required this.name,
    required this.resourceURI,
  });

  factory SeriesModel.fromJson(Map json) {
    return SeriesModel(
      name: json['name'],
      resourceURI: json['resourceURI'],
    );
  }

  Map<String, dynamic> toJson() => {
    'name': name,
    'resourceURI': resourceURI,
  };
}