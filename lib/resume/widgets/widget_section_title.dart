import 'package:flutter/material.dart';

class WidgetSectionTitle extends StatelessWidget {
  final String title;

  const WidgetSectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        const Divider(),
        const SizedBox(height: 16.0),
      ],
    );
  }
}
