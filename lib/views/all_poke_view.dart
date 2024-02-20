import 'package:flutter/material.dart';
import 'package:pokebook/utils/app_images.dart';

import '../utils/app_colors.dart';
import '../widgets/poke_card.dart';

class AllPokemonView extends StatefulWidget {
  const AllPokemonView({super.key});

  @override
  State<AllPokemonView> createState() => _AllPokemonViewState();
}

class _AllPokemonViewState extends State<AllPokemonView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              elevation: 8.0,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Poké',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'book',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: AppColors.defaultColor,
                    ),
                  )
                ],
              ),
              backgroundColor: Colors.white,
              leading: Container(),
              actions: const [
                Icon(
                  Icons.radio_button_checked,
                  size: 35,
                ),
              ],
            ),
          ),
          Positioned(
            top: 0.0,
            left: 10.0,
            child: AppImages.logo,
          ),
          Positioned(
            top: 120.0,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 2.0, color: Colors.black12),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 2.0, color: Colors.black12),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        // icon: Icon(Icons.search),
                        hintText: 'Enter pokemon name',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ListView(
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    children: const [
                      PokeCardWidget(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
