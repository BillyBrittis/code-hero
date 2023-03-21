import 'package:code_hero/app/home/entities/character_model.dart';
import 'package:code_hero/app/home/repositories/home_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockHttpClient extends Mock implements Dio {}

class MockHttpResponse extends Mock implements Response {}

void main() {
  group('CharacterService', () {
    test('getCharacters returns a list of CharacterModel', () async {
      final repository = HomeRepositoryImp(Dio());
      final characters = await repository.getCharacters(offset: 0);
      expect(characters, isA<List<CharacterModel>>());
    });

  });
}
