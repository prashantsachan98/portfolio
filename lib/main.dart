// Add these imports at the top of your file

import 'package:flutter/material.dart';
import 'package:portfolio/resume.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Developer Portfolio',
      theme: ThemeData(
        colorScheme: const ColorScheme.light().copyWith(
          primary: const Color.fromARGB(255, 43, 91, 44),
          secondary: const Color.fromARGB(255, 0, 0, 255), // Accent color
        ),
        fontFamily: 'Montserrat', // Custom font
      ),
      darkTheme: ThemeData(
        colorScheme: const ColorScheme.dark().copyWith(
          primary: const Color.fromARGB(255, 43, 91, 44),
          secondary: const Color.fromARGB(255, 0, 0, 255), // Accent color
        ),
        fontFamily: 'Montserrat', // Custom font
      ),
      themeMode: ThemeMode.system, // Auto switch between light and dark mode
      home: const MyHomePage(title: 'Flutter Developer Portfolio'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isDarkMode = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = _isDarkMode ? ThemeData.dark() : ThemeData.light();
    return MaterialApp(
      title: 'Flutter Developer Portfolio',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: const Color.fromARGB(255, 43, 91, 44),
        ),
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              widget.title,
              style: const TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Home'),
                Tab(text: 'Resume'),
                Tab(
                  text: 'Blog',
                )
              ],
            ),
          ),
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            children: [_buildHomeTab(), ResumeWidget(), _buildBlogTab()],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                _isDarkMode = !_isDarkMode;
              });
            },
            child: Icon(_isDarkMode ? Icons.light_mode : Icons.dark_mode),
            backgroundColor: theme.colorScheme.primary,
          ),
        ),
      ),
    );
  }

  Widget _buildHomeTab() {
    return ListView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://wallpaperaccess.com/full/1111946.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://lh3.googleusercontent.com/pw/AJFCJaVdh_R2yAZ2hJ7FnyrUDqrhmVtOQcmNTN3MSspthV6m-MuyLI0Phcxk4bWeu3Lsnn7RDVwjFk3CTRUsHyGRAglYgDgpneYl88UwkvhEZ1CO6mvRM0HdQOHbYXNRTBsjsrLnF2l8ZY0m8dYXNdUQXU24=w717-h956-s-no?authuser=0'),
                    radius: 50,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Prashant Sachan',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Flutter Developer',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'About Me',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'I am a Flutter developer with experience in building high-quality mobile applications. I have a strong understanding of Dart and the Flutter framework, and I am skilled in building responsive and user-friendly interfaces.',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Skills',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 4.0,
                    children: const <Widget>[
                      Chip(label: Text('Flutter')),
                      Chip(label: Text('Dart')),
                      Chip(label: Text('Firebase')),
                      Chip(label: Text('Git')),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Projects',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: InkWell(
                      onTap: () => launchUrl(Uri.parse(
                          'https://github.com/prashantsachan98/newshub')),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.network(
                              'https://drive.google.com/file/d/1R4aKohvzr93UzQIu97AcxXbtG1ZgFyN-/view?usp=sharing',
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  'newsHub',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'The Flutter app is a clone of the popular news app InShorts in India. It offers a light/dark mode toggle, allowing users to read summaries of breaking news in 60 words. Users can access news from various categories and sources in one place, and read full articles through a webview. The app also enables easy sharing of news cards with friends.',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: InkWell(
                      onTap: () => launchUrl(Uri.parse(
                          'https://github.com/prashantsachan98/foodose')),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.network(
                              'https://drive.google.com/file/d/1OBGtqsMjzpHRFW6d8QdMDzgONzCfDYeP/view?usp=sharing',
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  'Foodose',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'The recipe app is built with Flutter and utilizes the spoonacular API. Users can search for recipes using the spoonacular API, which provides detailed information on ingredients and instructions for cooking. The app is cross-platform, compatible with various devices. It also includes a diet planner feature that allows users to plan their meals for the day. Additionally, users can save their favorite recipes offline for convenient access when cooking later. The app provides a seamless and user-friendly experience for discovering, planning, and preparing delicious meals.',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: InkWell(
                      onTap: () => launchUrl(Uri.parse(
                          'https://github.com/prashantsachan98/todo-with-firebase')),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.network(
                              'https://drive.google.com/file/d/1dKtCjbrZ2y49sLzQIafnOF0hfjlXJBCW/view?usp=drive_link',
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  'Todo',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "TaskDo is a cross-platform ToDo List app designed for efficient task management. The app integrates Firebase and Google login for seamless user authentication and data storage. With TaskDo, users can easily create, organize, and prioritize tasks, ensuring productivity and effective time management. The app provides a user-friendly interface for adding tasks, setting deadlines, and marking completed tasks. Whether it's for personal use or team collaboration, TaskDo simplifies the process of managing tasks and staying organized.",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.email),
                        onPressed: () => launch(
                            'mailto:<Email>?subject=Contact%20from%20Portfolio%20Website'),
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
                  )
                ],
              ))
        ]);
  }

  // ...

  // ...

  Widget _buildBlogTab() {
    // Replace this list with your own list of blog posts
    final blogPosts = [
      BlogPost(
        title: 'Blog Post 1',
        date: '2022-01-01',
        imageUrl: 'https://picsum.photos/seed/picsum/200/300',
        content:
            'This is the content of Blog Post 1. It is a short description of the blog post.',
      ),
      BlogPost(
        title: 'Blog Post 2',
        date: '2022-02-01',
        imageUrl: 'https://picsum.photos/200/300',
        content:
            'This is the content of Blog Post 2. It is a short description of the blog post.',
      ),
      BlogPost(
        title: 'Blog Post 3',
        date: '2022-03-01',
        imageUrl: 'https://picsum.photos/seed/picsum/200/300',
        content:
            'This is the content of Blog Post 3. It is a short description of the blog post.',
      ),
    ];
    return ListView.builder(
      itemCount: blogPosts.length,
      itemBuilder: (context, index) {
        final blogPost = blogPosts[index];
        return Card(
          margin: const EdgeInsets.all(16),
          child: InkWell(
            onTap: () {
              // Handle tap
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.network(
                    blogPost.imageUrl,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        blogPost.title,
                        style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        blogPost.date,
                        style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(blogPost.content),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class BlogPost {
  final String title;
  final String date;
  final String imageUrl;
  final String content;

  BlogPost({
    required this.title,
    required this.date,
    required this.imageUrl,
    required this.content,
  });
}
