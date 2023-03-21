
import 'package:code_hero/app/data/endpoints.dart';
import 'package:code_hero/app/home/entities/character_model.dart';
import 'package:dio/dio.dart';

abstract class HomeRepository {
  Future<List<CharacterModel>> getCharacters({required int offset});
  Future<List<CharacterModel>> searchCharacter({required String name});
}

class HomeRepositoryImp implements HomeRepository {
  final Dio dio;
  HomeRepositoryImp(this.dio);

  @override
  Future<List<CharacterModel>> getCharacters({required int offset}) async {
    try {
      final response = await dio.get(
        Endpoints.characters,
        queryParameters: {
          'apikey': 'e7f20de9e0c97d792e160a7fa5816207',
          'hash': 'f35d67ba966ecae26c1b909a82249bb8',
          'ts': '1679010051',
          'limit': 4,
          'offset': offset,
        },
      );

      return List<CharacterModel>.from(response.data['data']['results'].map((m) => CharacterModel.fromJson(m)).toList());

    } catch (e) {
      return [];
    }
  }
  
  @override
  Future<List<CharacterModel>> searchCharacter({required String name}) async {
    try {
      final response = await dio.get(
        Endpoints.characters,
        queryParameters: {
          'apikey': 'e7f20de9e0c97d792e160a7fa5816207',
          'hash': 'f35d67ba966ecae26c1b909a82249bb8',
          'ts': '1679010051',
          'limit': 4,
          'name': name,
        },
      );

      return List<CharacterModel>.from(response.data['data']['results'].map((m) => CharacterModel.fromJson(m)).toList());

    } catch (e) {
      return [];
    }
  }
}
