import 'package:flutter/material.dart';

class AdditionalInfoItem extends StatelessWidget {
  // all the widgets re immutable (stateful, stateless) --> so their properties have to be final too.
  final IconData icon;
  final String label;
  final String value;

  const AdditionalInfoItem({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon, // Icons.water_drop, (value from the constructor can change, so Column cannot be const)
          size: 32,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(label), // so any value coming from the constructor cannot be a constant
        const SizedBox(
          height: 8,
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
