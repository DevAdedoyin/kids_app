import 'package:flutter/material.dart';
import 'package:kids_learning_app/models/to_learn.dart';

class AlphabetScreen extends StatefulWidget {
  static const routeName = '/alphabet_screen';

  @override
  _AlphabetScreenState createState() => _AlphabetScreenState();
}

class _AlphabetScreenState extends State<AlphabetScreen> {
  int pos;

  @override
  void initState() {
    super.initState();
    pos = 0;
  }

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context).settings.arguments;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bgimages/bgimg2.jpg'),
              fit: BoxFit.cover)),
      child: Scaffold(
        body: Row(
          children: [
            Text(
              ITEMS[index].letters[pos],
              style:
                  TextStyle(fontSize: 20, color: Theme.of(context).accentColor),
            ),
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
      ),
    );
  }
}
