import 'package:flutter/material.dart';
import 'widgets/image_section.dart';
import 'widgets/title_section.dart';
import 'widgets/button_section.dart';
import 'widgets/text_section.dart';
import 'widgets/favourite_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter DevCamp24 UI Demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(
                image: '../assets/images/header2.jpg',
              ),
              TitleSection(
                name: 'Jawad Alam',
                location: 'London, United Kingdom',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'I am a backend developer with expertise in Laravel and PHP. '
                    'I have experience working with both MongoDB and MySQL databases. '
                    'I am Microsoft Certified in Azure, holding both the AZ-900 and DP-900 certifications. '
                    'I leverage cloud services to build scalable and efficient applications.',
              ),
              FavoriteWidget(), // Add the favorite widget here if needed
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                'Assignment #1 - Session 2',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
