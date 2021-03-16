import 'package:flutter/material.dart';
import 'package:kids_learning_app/models/to_learn.dart';

class GenericDetailScreen extends StatefulWidget {
  GenericDetailScreen({Key key}) : super(key: key);

  static const routeName = '/generic_detail_screen';

  int pos;

  @protected
  @mustCallSuper
  void initState() {
    pos = 0;
  }

  @override
  _GenericDetailScreenState createState() => _GenericDetailScreenState();
}

class _GenericDetailScreenState extends State<GenericDetailScreen> {
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
            Container(
              height: 50,
              width: 50,
              child: Card(
                elevation: 10,
                child: Column(
                  children: [
                    Image.asset(
                      ITEMS[index].imageUrl[widget.pos],
                      fit: BoxFit.cover,
                    ),
                    Text(ITEMS[index].words[widget.pos])
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
                        widget.pos++;
                      });
                    }),
                IconButton(icon: Icon(Icons.play_arrow), onPressed: () {}),
                IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      widget.pos--;
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
