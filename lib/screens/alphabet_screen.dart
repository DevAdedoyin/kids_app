import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    pos = 0;
  }

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context).settings.arguments;
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 30,
                child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {
                      if (pos == 0) {
                        setState(() {
                          pos = ITEMS[index].words.length - 1;
                        });
                      } else {
                        setState(() {
                          pos--;
                        });
                      }
                    }),
              ),
            ),
            Expanded(
                flex: 3,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Text(
                        ITEMS[index].letters[pos],
                        style: TextStyle(
                          fontSize: 340,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    Expanded(
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.blue,
                        child: IconButton(
                            icon: Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                            ),
                            onPressed: () {}),
                      ),
                    ),
                  ],
                )),
            Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      ITEMS[index].imageUrl[pos],
                      fit: BoxFit.cover,
                    ),
                    Container(
                      child: Card(
                        elevation: 10,
                        color: Colors.transparent,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 7, top: 5),
                              child: Text(
                                ITEMS[index].words[pos],
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(right: 10, bottom: 7, top: 5),
                              child: CircleAvatar(
                                radius: 25,
                                child: IconButton(
                                    icon: Icon(Icons.play_arrow),
                                    onPressed: () {}),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.green,
                child: IconButton(
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {
                      if (pos == ITEMS[index].words.length - 1) {
                        setState(() {
                          pos = 0;
                        });
                      } else {
                        setState(() {
                          pos++;
                        });
                      }
                    }),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
