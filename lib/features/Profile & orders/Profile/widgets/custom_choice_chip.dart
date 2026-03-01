import 'package:flutter/material.dart';

class CustomChoiceChip extends StatelessWidget {
  final String label;
  final String selectedValue;
  final ValueChanged<String> onSelected;

  const CustomChoiceChip({
    super.key,
    required this.label,
    required this.selectedValue,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ChoiceChip(
        label: Text(label),
        selected: selectedValue == label,
        showCheckmark: false,
        selectedColor: Colors.orange,
        backgroundColor: Colors.grey.shade300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.5),
        ),
        labelStyle: const TextStyle(color: Colors.black),
        onSelected: (_) => onSelected(label),
      ),
    );
  }
}