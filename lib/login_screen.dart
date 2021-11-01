import 'main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(LoginScreen());
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo Home Page"),
      ),
      body: SingleChildScrollView(
        child: Row(
          children: [
            Expanded(
              child: Container(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 160.0,
                      left: 90.0,
                      child: Container(
                        width: 220,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('images/women.jpg'),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 260.0,
                      left: 140.0,
                      child: Text(
                        "Angel Yu",
                        style: TextStyle(
                          fontFamily: "Fruktur",
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 295.0,
                      left: 126.0,
                      child: Text(
                        "Flutter Developer",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontFamily: "Fruktur",
                          fontWeight: FontWeight.w200,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 330.0,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextField(
                          style: TextStyle(color: Colors.black),
                          decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.call,
                                color: Colors.lightBlue,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(),
                              hintText: "Enter user name"),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 420.0,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.lightBlue,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(),
                              hintText: "Enter Password"),
                        ),
                      ),
                    ),
                  ],
                ),
                height: height,
                width: width,
                color: Colors.lightBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
