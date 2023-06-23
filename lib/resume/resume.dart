import 'package:flutter/material.dart';
import 'package:portfolio/resume/model.dart';
import 'package:url_launcher/url_launcher.dart';

import 'widgets/widget_section_title.dart';
import 'widgets/widget_skill_section.dart';

class ResumeTab extends StatelessWidget {
  final List<ModelEducation> educationList = const [
    ModelEducation(
      institution: 'Sikkim Manipal University',
      duration: '2017 - 2020',
      qualification: 'Bachelors of Computer Application - 6.98 SGPA',
    ),
    // Add more education entries here
  ];

  final List<String> languages = ['Dart', 'Python', 'C'];
  final List<String> frameworks = ['Flutter', 'GraphQL', 'Firebase'];
  final List<String> databases = [
    'SQLite',
    'ISAR',
    'Hive',
    'MongoDB',
    'PostgreSQL'
  ];
  final List<String> tools = ['Postman', 'GIT', 'VS code', 'Android studio'];

  final List<ModelExperience> experienceList = const [
    ModelExperience(
      company: 'Vesatago Innovation, Nasik',
      role: 'Frontend Developer (Flutter)',
      duration: 'November 2021 - PRESENT',
      responsibilities: [
        'Worked with Flutter to build User Interface for Vesarthi application.',
        'Collaborated with cross-functional teams to define, design, and ship new features.',
        'Continuously discovered, evaluated, and implemented new technologies to maximize development efficiency.',
      ],
    ),
    ModelExperience(
      company: 'India Accelerator, Gurugram',
      role: 'Flutter Developer',
      duration: 'September 2021 - November 2021',
      responsibilities: [
        'Created prototypes for clients based on requirements.',
        'Developed code based on given specifications and standards.',
        'Worked with Flutter to build a fully functional user interface for mobile applications.',
      ],
    ),
    // Add more experience entries here
  ];

  final List<ModelProject> projects = const [
    ModelProject(
      title: 'Quality Control',
      description: [
        'Developed dynamic quality control app using Flutter with geotagging functionality.',
        'Designed user-friendly interface for capturing and validating data at specific locations.',
        'Implemented report generation feature for comprehensive quality control reports.',
        'Enabled sharing functionality for reports with specific individuals or groups.',
      ],
    ),
    ModelProject(
      title: 'Field Staff Management',
      description: [
        'Utilized geolocation services to track real-time positions of field staff members.',
        'Designed task management module for viewing and updating daily tasks.',
        'Implemented online/offline status tracking based on app usage and connectivity.',
        'Enabled offline functionality with automatic data sync when online.',
      ],
    ),
    // Add more projects here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          children: [
            const Text(
              'Prashant Sachan',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Software Engineer',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Email: prashantsachan@example.com',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: () {
                launch('tel:+1234567890');
              },
              child: const Text('Call'),
            ),
            const SizedBox(height: 24.0),
            const WidgetSectionTitle(title: 'Education'),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: educationList.length,
              itemBuilder: (context, index) {
                final education = educationList[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      education.institution,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      education.duration,
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      education.qualification,
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 24.0),
                  ],
                );
              },
            ),
            const WidgetSectionTitle(title: 'Technical Skills'),
            SkillsSection(title: 'Languages', skills: languages),
            SkillsSection(title: 'Frameworks', skills: frameworks),
            SkillsSection(title: 'Databases', skills: databases),
            SkillsSection(title: 'Tools', skills: tools),
            const WidgetSectionTitle(title: 'Experience'),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: experienceList.length,
              itemBuilder: (context, index) {
                final experience = experienceList[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      experience.company,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      experience.role,
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      experience.duration,
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Responsibilities:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                          experience.responsibilities.map((responsibility) {
                        return Text(
                          '- $responsibility',
                          style: const TextStyle(fontSize: 16),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 24.0),
                  ],
                );
              },
            ),
            const WidgetSectionTitle(title: 'Projects'),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: projects.length,
              itemBuilder: (context, index) {
                final project = projects[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      project.title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: project.description.map((description) {
                        return Text(
                          '- $description',
                          style: const TextStyle(fontSize: 16),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 24.0),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
