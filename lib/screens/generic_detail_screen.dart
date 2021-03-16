import 'package:flutter/material.dart';
import 'package:kids_learning_app/models/to_learn.dart';

class GenericDetailScreen extends StatefulWidget {
  static const routeName = '/generic_detail_screen';

  @override
  _GenericDetailScreenState createState() => _GenericDetailScreenState();
}

class _GenericDetailScreenState extends State<GenericDetailScreen> {
  int pos;

  @override
  void initState() {
    super.initState();
    pos = 0;
  }

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context).settings.arguments;
    print('VALUE: ' + index.toString());
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/bgimages/bgimg2.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                child: Card(
                  elevation: 10,
                  child: Column(
                    children: [
                      Image.asset(
                        ITEMS[index].imageUrl[pos],
                        fit: BoxFit.cover,
                      ),
                      Text(ITEMS[index].words[pos])
                    ],
                  ),
                ),
              ),
              Spacer(),
              Column(
                children: [
                  IconButton(
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () {
                        setState(() {
                          pos++;
                        });
                      }),
                  IconButton(icon: Icon(Icons.play_arrow), onPressed: () {}),
                  IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        pos--;
                      }),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
