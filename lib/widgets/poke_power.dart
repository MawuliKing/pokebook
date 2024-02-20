import 'package:flutter/material.dart';

class PokePowerWidget extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String powerName;

  const PokePowerWidget({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.powerName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade300,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 0.5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: iconColor,
            ),
            Text(powerName, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
