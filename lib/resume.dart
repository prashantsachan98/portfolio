import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ResumeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resume'),
      ),
      body: SingleChildScrollView(
        padding:const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Prashant Sachan',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          const  SizedBox(height: 8.0),
            const Text(
              'Software Engineer',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          const  SizedBox(height: 8.0),
            const Text(
              '+91-9167765822',
              style: const TextStyle(fontSize: 16),
            ),
            const Text(
              'prashantsachan04@gmail.com',
              style: const TextStyle(fontSize: 16),
            ),
          const  SizedBox(height: 16.0),
            const Text(
              'Kamothe, Navi Mumbai, Maharashtra',
              style: const TextStyle(fontSize: 16),
            ),
          const  SizedBox(height: 24.0),
            const Text(
              'EXCERPT',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          const  SizedBox(height: 8.0),
            const Text(
              'Self-learner, result oriented, motivated, energetic, and enthusiastic software engineer with 1.5 years of experience. Excellent record of handling enterprise-wide projects and clients. Loves to write clean, self-explainable, and reusable code with DRY and Adapter approaches.',
              style: const TextStyle(fontSize: 16),
            ),
          const  SizedBox(height: 24.0),
            const Text(
              'EDUCATION',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          const  SizedBox(height: 8.0),
            const Text(
              'Sikkim Manipal University',
              style: const TextStyle(fontSize: 16),
            ),
            const Text(
              '2017 - 2020',
              style: const TextStyle(fontSize: 16),
            ),
            const Text(
              'Bachelors of Computer Application - 6.98 SGPA',
              style: const TextStyle(fontSize: 16),
            ),
          const  SizedBox(height: 24.0),
            const Text(
              'TECHNICAL SKILLS',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          const  SizedBox(height: 8.0),
            const Text(
              'LANGUAGES',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          const  SizedBox(height: 8.0),
            const Text(
              '• Dart\n• Python\n• C',
              style: const TextStyle(fontSize: 16),
            ),
          const  SizedBox(height: 8.0),
            const Text(
              'FRAMEWORKS',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          const  SizedBox(height: 8.0),
            const Text(
              '• Flutter\n• GraphQL\n• Firebase',
              style: const TextStyle(fontSize: 16),
            ),
          const  SizedBox(height: 8.0),
            const Text(
              'DATABASE',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          const  SizedBox(height: 8.0),
            const Text(
              '• SQLite\n• ISAR\n• Hive\n• MongoDB\n• PostgreSQL',
              style: const TextStyle(fontSize: 16),
            ),
          const  SizedBox(height: 8.0),
            const Text(
              'TOOLS',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          const  SizedBox(height: 8.0),
            const Text(
              '• Postman\n• GIT\n• VS code\n• Android studio',
              style: const TextStyle(fontSize: 16),
            ),
          const  SizedBox(height: 24.0),
            const Text(
              'EXPERIENCE',
              style:  TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          const  SizedBox(height: 8.0),
            const Text(
              'Vesatago Innovation, Nasik - Frontend Developer (Flutter)',
              style: const TextStyle(fontSize: 16),
            ),
            const Text(
              'November 2021 - PRESENT',
              style: const TextStyle(fontSize: 16),
            ),
          const  SizedBox(height: 8.0),
          const   Text(
              '• Worked with Flutter to build User Interface for Vesarthi application.',
              style: const TextStyle(fontSize: 16),
            ),
           const  Text(
              '• Collaborated with cross-functional teams to define, design, and ship new features.',
              style: const TextStyle(fontSize: 16),
            ),
          const   Text(
              '• Continuously discovered, evaluated, and implemented new technologies to maximize development efficiency.',
              style: const TextStyle(fontSize: 16),
            ),
           const SizedBox(height: 16.0),
           const  Text(
              'India Accelerator, Gurugram - Flutter Developer',
              style: const TextStyle(fontSize: 16),
            ),
           const  Text(
              'September 2021 - November 2021',
              style: const TextStyle(fontSize: 16),
            ),
          const  SizedBox(height: 8.0),
           const  Text(
              '• Created prototypes for clients based on requirements.',
              style:  TextStyle(fontSize: 16),
            ),
           const  Text(
              '• Developed code based on given specifications and standards.',
              style:  TextStyle(fontSize: 16),
            ),
           const  Text(
              '• Worked with Flutter to build a fully functional user interface for mobile applications.',
              style:  TextStyle(fontSize: 16),
            ),
          const  SizedBox(height: 24.0),

          const   Text(
              'Projects',
              style:  TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          const  SizedBox(height: 8.0),
          const  ProjectCard(
              title: 'Quality Control',
              description: [
                'Developed dynamic quality control app using Flutter with geotagging functionality.',
                'Designed user-friendly interface for capturing and validating data at specific locations.',
                'Implemented report generation feature for comprehensive quality control reports.',
                'Enabled sharing functionality for reports with specific individuals or groups.',
              ],
            ),
          const  ProjectCard(
              title: 'Field Staff Management',
              description: [
                'Utilized geolocation services to track real-time positions of field staff members.',
                'Designed task management module for viewing and updating daily tasks.',
                'Implemented online/offline status tracking based on app usage and connectivity.',
                'Enabled offline functionality with automatic data sync when online.',
              ],
            ),
          const  ProjectCard(
              title: 'Farmer and Trader Registration',
              description: [
                'Developed mobile application for seamless registration process of farmers and traders.',
                'Integrated geotagging functionality for precise mapping of farms, fields, and plots.',
                'Implemented robust safety features to protect user data and ensure privacy.',
                'Employed secure authentication and authorization mechanisms for data confidentiality.',
                'Designed user-centric app with focus on usability and adoption.',
              ],
            ),
          const  ProjectCard(
              title: 'Benchmark',
              description: [
                'Implemented local database storage (Isar or Hive) for offline benchmarking data storage.',
                'Developed synchronization mechanism for background data syncing using workmanager.',
                'Utilized fl_chart library to display linear and bar charts for data visualization.',
                'Created user-friendly screen for presenting benchmarking data with filtering and sorting options.',
                'Enabled offline data viewing by retrieving locally stored data.',
                'Implemented background syncing indicator and error handling.',
              ],
            ),
          const  ProjectCard(
              title: 'NewsHub - Flutter, REST APIs',
              description: [
                'Working clone of popular News App InShorts in India.',
                'Users can read summaries of the types of breaking news in 60 words.',
                'Users can read all types of news and headlines from various sources in one place.',
                'Provided fully functional dark and light modes for the application.',
                'Implemented a shareable menu to share the news with social contacts.',
                'Worked with Flutter and REST APIs.',
              ],
              link: 'NEWSHUB',
            ),

            // Add other projects here
          const  SizedBox(height: 24.0),
          const   Text(
              'PROFILES',
              style:  TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          const  SizedBox(height: 8.0),
            GestureDetector(
              onTap: () {
                launchUrl(Uri.parse(
                    "https://www.linkedin.com/in/prashant-sachan-827b11130/"));
              },
              child:const  Text(
                'LinkedIn - prashant-sachan',
                style:  TextStyle(
                  fontSize: 16,
                  decoration:  TextDecoration.underline,
                  color: Colors.blue,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Open GitHub profile
              },
              child: const Text(
                'GitHub - prashantsachan98',
                style:  TextStyle(
                  fontSize: 16,
                  decoration:  TextDecoration.underline,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Project Card Widget
class ProjectCard extends StatelessWidget {
  final String title;
  final List<String> description;
  final String? link;

  const ProjectCard({
    required this.title,
    required this.description,
    this.link,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          title,
          style:  const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: description
              .map(
                (item) => Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child:  Text('• $item'),
                ),
              )
              .toList(),
        ),
        if (link != null)
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child:  Text(
              'LINK - $link',
              style: const TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
      const  SizedBox(height: 16.0),
      ],
    );
  }
}
