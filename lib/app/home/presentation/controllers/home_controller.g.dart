// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on HomeControllerBase, Store {
  late final _$searchCharacterInputAtom =
      Atom(name: 'HomeControllerBase.searchCharacterInput', context: context);

  @override
  TextEditingController get searchCharacterInput {
    _$searchCharacterInputAtom.reportRead();
    return super.searchCharacterInput;
  }

  @override
  set searchCharacterInput(TextEditingController value) {
    _$searchCharacterInputAtom.reportWrite(value, super.searchCharacterInput,
        () {
      super.searchCharacterInput = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: 'HomeControllerBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$currentPageAtom =
      Atom(name: 'HomeControllerBase.currentPage', context: context);

  @override
  int get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(int value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  late final _$offsetAtom =
      Atom(name: 'HomeControllerBase.offset', context: context);

  @override
  int get offset {
    _$offsetAtom.reportRead();
    return super.offset;
  }

  @override
  set offset(int value) {
    _$offsetAtom.reportWrite(value, super.offset, () {
      super.offset = value;
    });
  }

  late final _$listCharactersAtom =
      Atom(name: 'HomeControllerBase.listCharacters', context: context);

  @override
  List<CharacterModel> get listCharacters {
    _$listCharactersAtom.reportRead();
    return super.listCharacters;
  }

  @override
  set listCharacters(List<CharacterModel> value) {
    _$listCharactersAtom.reportWrite(value, super.listCharacters, () {
      super.listCharacters = value;
    });
  }

  late final _$getCharactersAsyncAction =
      AsyncAction('HomeControllerBase.getCharacters', context: context);

  @override
  Future<List<CharacterModel>> getCharacters() {
    return _$getCharactersAsyncAction.run(() => super.getCharacters());
  }

  late final _$searchCharacterAsyncAction =
      AsyncAction('HomeControllerBase.searchCharacter', context: context);

  @override
  Future<List<CharacterModel>> searchCharacter({required String name}) {
    return _$searchCharacterAsyncAction
        .run(() => super.searchCharacter(name: name));
  }

  late final _$HomeControllerBaseActionController =
      ActionController(name: 'HomeControllerBase', context: context);

  @override
  dynamic changeIsLoading(bool value) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.changeIsLoading');
    try {
      return super.changeIsLoading(value);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeCurrentPage(int value) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.changeCurrentPage');
    try {
      return super.changeCurrentPage(value);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeOffset(int value) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.changeOffset');
    try {
      return super.changeOffset(value);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeInputText(String value) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.changeInputText');
    try {
      return super.changeInputText(value);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changePage({required int offset, required int currentPage}) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.changePage');
    try {
      return super.changePage(offset: offset, currentPage: currentPage);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
searchCharacterInput: ${searchCharacterInput},
isLoading: ${isLoading},
currentPage: ${currentPage},
offset: ${offset},
listCharacters: ${listCharacters}
    ''';
  }
}
