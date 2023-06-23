// Add these imports at the top of your file

import 'package:flutter/material.dart';
import 'package:portfolio/blog/blog.dart';
import 'package:portfolio/home/home.dart';
import 'package:portfolio/resume/resume.dart';

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
      title: 'Developer Portfolio',
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
            children: [HomeTab(), ResumeTab(), BlogTab()],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                _isDarkMode = !_isDarkMode;
              });
            },
            backgroundColor: theme.colorScheme.primary,
            child: Icon(_isDarkMode ? Icons.light_mode : Icons.dark_mode),
          ),
        ),
      ),
    );
  }
}
