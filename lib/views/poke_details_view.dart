import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:pokebook/utils/app_colors.dart';

import '../poke_model.dart';
import '../widgets/poke_information.dart';

class PokeDetailsView extends StatefulWidget {
  const PokeDetailsView({super.key});

  @override
  State<PokeDetailsView> createState() => _PokeDetailsViewState();
}

class _PokeDetailsViewState extends State<PokeDetailsView> {
  Map<String, dynamic> json = {
    "name": "Charizard",
    "hp": 40,
    "attack": 30,
    "defense": 40,
    "specialAttack": 90,
    "specialDefense": 80,
    "speed": 45
  };

  @override
  Widget build(BuildContext context) {
    PokemonModel charizard = PokemonModel.fromJson(json);

    return Scaffold(
      backgroundColor: AppColors.defaultColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: IconButton(
                  iconSize: 20,
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  top: 140,
                  child: PokeInformation(
                    pokemon: charizard,
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Hero(
                    // tag: pokemon.id!,
                    tag: const {"name": "charizard"},
                    child: Image.asset(
                      'assets/images/charizard.png',
                      height: 200,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
