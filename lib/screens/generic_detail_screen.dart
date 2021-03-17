import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                flex: 10,
                child: Container(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Image.asset(
                          ITEMS[index].imageUrl[pos],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Card(
                        elevation: 12,
                        color: Colors.transparent,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                margin: EdgeInsets.only(
                                    left: 20, bottom: 7, top: 5),
                                child: Text(
                                  ITEMS[index].words[pos],
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold),
                                )),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 20, right: 20, bottom: 7, top: 5),
                              child: CircleAvatar(
                                radius: 25,
                                child: IconButton(
                                    icon: Icon(Icons.play_arrow),
                                    onPressed: () {}),
                              ),
                            )
                          ],
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
      ),
    );
  }
}
