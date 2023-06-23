import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WidgetContact extends StatelessWidget {
  const WidgetContact();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          icon: const Icon(Icons.email),
          onPressed: () => launch(
            'mailto:<Email>?subject=Contact%20from%20Portfolio%20Website',
          ),
        ),
        IconButton(
          icon: const Icon(Icons.phone),
          onPressed: () => launch('tel:<PhoneNumber>'),
        ),
        IconButton(
          icon: const Icon(Icons.web),
          onPressed: () => launch('<URL>'),
        ),
      ],
    );
  }
}
