import 'package:flutter/material.dart';
import 'package:pokebook/widgets/poke_power.dart';

import '../poke_model.dart';
import '../utils/app_colors.dart';

class PokeInformation extends StatelessWidget {
  final PokemonModel pokemon;

  const PokeInformation({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(children: [
              Text(
                pokemon.name,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              const SizedBox(height: 5),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PokePowerWidget(
                    icon: Icons.whatshot,
                    iconColor: Colors.red,
                    powerName: 'Fire',
                  ),
                  PokePowerWidget(
                    icon: Icons.airplanemode_active,
                    iconColor: Colors.blue,
                    powerName: 'Flying',
                  ),
                ],
              ),
            ]),
            const SizedBox(height: 5),
            _buildInformationRow("HP", pokemon.hp),
            _buildInformationRow("Attack", pokemon.attack),
            _buildInformationRow("Defense", pokemon.defense),
            _buildInformationRow("Special Attack", pokemon.specialAttack),
            _buildInformationRow("Special Defense", pokemon.specialDefense),
          ],
        ),
      ),
    );
  }

  Widget _buildInformationRow(String label, int value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100, // Adjust the width as needed
              child: LinearProgressIndicator(
                value: value / 100, // Assuming the values are percentages
                backgroundColor: Colors.grey,
                valueColor:
                    AlwaysStoppedAnimation<Color>(AppColors.defaultColor),
              ),
            ),
            Text(
              "$value",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
