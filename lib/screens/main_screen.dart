import 'package:flutter/material.dart';
import '../models/to_learn.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key = const Key('')}) : super(key: key);
  static const routeName = '/main_screen';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/bgimages/bgimg3.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Kids Learning (Offline)'),
          actions: [
            PopupMenuButton(
                itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Text('All Scores'),
                      ),
                      PopupMenuItem(
                        child: Text('Settings'),
                      ),
                      PopupMenuItem(
                        child: Text('About'),
                      ),
                      PopupMenuItem(
                        child: Text('Share App'),
                      ),
                      PopupMenuItem(
                        child: Text('More Apps'),
                      ),
                    ])
          ],
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            childAspectRatio: 3 / 4,
          ),
          itemBuilder: (context, index) {
            return Card();
          },
        ),
      ),
    );
  }
}
