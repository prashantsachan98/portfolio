import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  final String title;
  final List<String> skills;

  const SkillsSection({required this.title, required this.skills});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        Wrap(
          spacing: 8.0,
          children: skills.map((skill) {
            return Chip(
              label: Text(skill),
            );
          }).toList(),
        ),
        const SizedBox(height: 24.0),
      ],
    );
  }
}
