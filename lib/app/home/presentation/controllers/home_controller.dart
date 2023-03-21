import 'package:code_hero/app/home/repositories/home_repository.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:mobx/mobx.dart';

import '../../entities/character_model.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  final HomeRepository repository;
  HomeControllerBase(this.repository);

  @observable
  TextEditingController searchCharacterInput = TextEditingController();

  @observable
  bool isLoading = false;

  @observable
  int currentPage = 1;

  @observable
  int offset = 0;

  @observable
  List<CharacterModel> listCharacters = [];

  @action
  changeIsLoading(bool value) => isLoading = value;

  @action
  changeCurrentPage(int value) => currentPage = value;
  
  @action
  changeOffset(int value) => offset = value;

  @action
  changeInputText(String value) => searchCharacterInput.text = value;

  @action
  Future<List<CharacterModel>> getCharacters() async {
    searchCharacterInput.text = '';
    changeIsLoading(true);
    listCharacters = await repository.getCharacters(offset: offset);
    changeIsLoading(false);
    return listCharacters;
  }
  
  @action
  Future<List<CharacterModel>> searchCharacter({required String name}) async {
    currentPage = 1;
    changeIsLoading(true);
    listCharacters = await repository.searchCharacter(name: name);
    changeIsLoading(false);
    return listCharacters;
  }

  @action
  changePage({required int offset, required int currentPage}) {
    changeCurrentPage(currentPage);
    changeOffset(offset);
    getCharacters();
  }
}
