import 'package:flutter/material.dart';
import 'package:kids_learning_app/screens/alphabet_screen.dart';
import 'package:kids_learning_app/screens/generic_detail_screen.dart';
import '../models/to_learn.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key = const Key('')}) : super(key: key);
  static const routeName = '/main_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            // constraints: BoxConstraints.expand(),
            // width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/bgimages/bgimg3.jpg',
                  ),
                  fit: BoxFit.fitHeight),
            ),
          ),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 2,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  if (index == 0) {
                    Navigator.of(context)
                        .pushNamed(AlphabetScreen.routeName, arguments: index);
                  } else {
                    Navigator.of(context).pushNamed(
                        GenericDetailScreen.routeName,
                        arguments: index);
                  }
                },
                child: GridTile(
                  child: Card(
                    elevation: 30,
                    shadowColor: Colors.red,
                    child: Image(
                      image: AssetImage(ITEMS[index].headerImage),
                      fit: BoxFit.contain,
                    ),
                  ),
                  footer: GridTileBar(
                    backgroundColor: Colors.black54,
                    title: Text(
                      ITEMS[index].title,
                      style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              );
            },
            itemCount: ITEMS.length,
          ),
        ],
      ),
    );
  }
}
