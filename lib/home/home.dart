import 'package:flutter/material.dart';
import 'package:portfolio/home/widgets/widget_project_card.dart';
import 'widgets/widget_contact.dart';
import 'widgets/widget_profile_section.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      children: [
      const  WidgetProfileSection(),
      const   SizedBox(height: 16),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 16),
           child: Column(
            children:const [
              WidgetProjectCard(
            imageAsset: 'asset/images/newHub.jpeg',
            title: 'newsHub',
            description:
                'A clone of the popular news app. It offers a light/dark mode toggle, allowing users to read summaries of breaking news in 60 words. Users can access news from various categories and sources in one place, and read full articles through a webview. The app also enables easy sharing of news cards with friends.',
            projectUrl: 'https://github.com/prashantsachan98/newshub',
        ),
           SizedBox(height: 16),
        WidgetProjectCard(
            imageAsset: 'asset/images/Foodose.jpeg',
            title: 'Foodose',
            description:
                'The recipe app is built with Flutter and utilizes the spoonacular API. Users can search for recipes, which provides detailed information on ingredients and instructions for cooking. It also includes a diet planner feature that allows users to plan their meals for the day. Additionally, users can save their favorite recipes offline for convenience. The app provides a seamless and user-friendly experience for discovering, planning, and preparing delicious meals.',
            projectUrl: 'https://github.com/prashantsachan98/foodose',
        ),
           SizedBox(height: 16),
        WidgetProjectCard(
            imageAsset: 'asset/images/todo.jpeg',
            title: 'Todo',
            description:
                'TaskDo is a cross-platform ToDo List app designed for efficient task management. The app integrates Firebase and Google login for seamless user authentication and data storage. With TaskDo, users can easily create, organize, and prioritize tasks, ensuring productivity and effective time management. The app provides a user-friendly interface for adding tasks, setting deadlines, and marking completed tasks.',
            projectUrl:
                'https://github.com/prashantsachan98/todo-with-firebase',
        ),
        const SizedBox(height: 16),
        WidgetContact(),
            ],
           ),
         ),
        
      ],
    );
  }

  

  
}
