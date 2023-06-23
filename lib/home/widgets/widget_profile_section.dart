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
          image: NetworkImage('https://wallpaperaccess.com/full/1111946.jpg'),
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
          backgroundImage: NetworkImage(
            'https://lh3.googleusercontent.com/pw/AJFCJaVdh_R2yAZ2hJ7FnyrUDqrhmVtOQcmNTN3MSspthV6m-MuyLI0Phcxk4bWeu3Lsnn7RDVwjFk3CTRUsHyGRAglYgDgpneYl88UwkvhEZ1CO6mvRM0HdQOHbYXNRTBsjsrLnF2l8ZY0m8dYXNdUQXU24=w717-h956-s-no?authuser=0',
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
      spacing: 8.0,
      runSpacing: 4.0,
      children: const <Widget>[
        Chip(label: Text('Flutter')),
        Chip(label: Text('Dart')),
        Chip(label: Text('Firebase')),
        Chip(label: Text('Git')),
      ],
    );
  }
}
