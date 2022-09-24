import 'package:devcamp/widgets/grid_list.dart';
import 'package:devcamp/widgets/tag_list.dart';
import 'package:devcamp/widgets/top_image.dart';
import 'package:flutter/material.dart';

import 'core/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: themeData,
      home: const HomePage(title: 'Travel App'),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            TopImageWidget(),
            TagListWidget(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Popular Destinations',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GridListWidget(),
          ],
        ),
      ),
    );
  }
}
