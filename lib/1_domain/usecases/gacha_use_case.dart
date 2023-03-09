import 'dart:math';

import 'package:cs311hw10/1_domain/entities/genshin_character_entity.dart';
import 'package:cs311hw10/2_data/repositories/gacha_repo_impl.dart';
import 'package:flutter/material.dart';

class GachaUseCase extends ChangeNotifier {
  GenshinCharacterEntity? randomCharacter;
  final gachaRepo = GachaRepoImpl();

  Future<GenshinCharacterEntity> getRandomCharacter() async {
    final characters = await gachaRepo.getCharactersFromApi();
    final randomCharacters = characters[Random().nextInt(characters.length)];
    randomCharacter = await gachaRepo.getCharacterInfo(randomCharacters);
    notifyListeners();
    return randomCharacter!;
  }
}
