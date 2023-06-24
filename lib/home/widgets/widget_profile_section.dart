import 'package:flutter/material.dart';

class WidgetProfileSection extends StatelessWidget {
  const WidgetProfileSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildProfileImage(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              _buildProfileDetails(),
              const SizedBox(height: 16),
              _buildSectionTitle('About Me'),
              const SizedBox(height: 8),
              _buildSectionContent(
                'I am a Flutter developer with experience in building high-quality mobile applications. I have a strong understanding of Dart and the Flutter framework, and I am skilled in building responsive and user-friendly interfaces.',
              ),
              const SizedBox(height: 16),
              _buildSectionTitle('Skills'),
              const SizedBox(height: 8),
              _buildSkills(),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildProfileImage() {
    return Container(
      height: 200,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('asset/images/cover.webp'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildProfileDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage(
            'asset/images/prashant.jpg',
          ),
          radius: 50,
        ),
        SizedBox(height: 16),
        Text(
          'Prashant Sachan',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Flutter Developer',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildSectionContent(String content) {
    return Text(
      content,
      style: const TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 16,
        color: Colors.grey,
      ),
    );
  }

  Widget _buildSkills() {
    return Wrap(
      spacing:
          8.0, // Use even numbers for spacing values for better performance on the web
      runSpacing:
          4.0, // Use even numbers for runSpacing values for better performance on the web
      children:
          const <Widget>[ // Use const constructors wherever possible to reduce the number of objects that need to be created and garbage collected
        Chip(label:
            Text('Flutter')), // Use Text instead of RichText for better performance on the web
        Chip(label:
            Text('Dart')), // Use Text instead of RichText for better performance on the web
        Chip(label:
            Text('Firebase')), // Use Text instead of RichText for better performance on the web
        Chip(label:
            Text('Git')), // Use Text instead of RichText for better performance on the web
      ],
    );
  }
}
