import 'package:flutter/material.dart';
import 'package:tensorflow/tensorflow.dart';

class Home extends StatelessWidget {
  void selectPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Tensorflow();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "SknApp",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          backgroundColor: Colors.red,
          elevation: 0,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/homescreenimg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: InkWell(
                  onTap: () => selectPage(context),
                  splashColor: Colors.black,
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    child: Material(
                      borderRadius: BorderRadius.circular(15),
                      shadowColor: Colors.orange,
                      child: Container(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            "Analyze",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          )),
                      elevation: 10,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              )
            ],
          ),
        ),
      ),
    );
  }
}
