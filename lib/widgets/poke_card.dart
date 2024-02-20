import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokebook/widgets/poke_power.dart';

import '../views/poke_details_view.dart';

class PokeCardWidget extends StatelessWidget {
  const PokeCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: InkWell(
        onTap: () {
          Get.to(() => const PokeDetailsView());
          debugPrint('Navigate to details page');
        },
        splashColor: Colors.grey.shade300,
        child: Stack(
          children: [
            Card(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: const EdgeInsets.all(10.0),
                      child: const SizedBox(
                        width: 190,
                        height: 190,
                      ),
                    ),
                    const SizedBox(height: 16),
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
                  ],
                ),
              ),
            ),
            Positioned(
              top: -50.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'assets/images/charizard.png',
                  width: 100,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
