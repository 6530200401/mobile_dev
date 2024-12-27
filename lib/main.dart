import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _screenIndex = 0;
  final mobileScreen = [homePage(), iconPage()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //------------------- AppBar -------------------
        appBar: AppBar(
          // backgroundColor: Color(0xFFA2D5F2),
          leading: Icon(Icons.menu),
          actions: [Icon(Icons.search), SizedBox(width: 15)],
        ),
        //------------------- body -------------------
        body: mobileScreen[_screenIndex],
        //------------------- bottomNavigationBar -------------------
        bottomNavigationBar: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            color: Color(0xFF40A8C4),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _screenIndex = 0;
                  });
                },
                child: Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _screenIndex = 1;
                  });
                },
                child: Icon(
                  Icons.widgets_outlined,
                  color: Colors.white,
                ),
              ),
              Icon(
                Icons.notifications_outlined,
                color: Colors.white,
              ),
              Icon(
                Icons.person_outline,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _usernameController,
                  maxLength: 20,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Username",
                    icon: Icon(Icons.person),
                    // prefixIcon: Icon(Icons.abc),

                    // hintText: "Username",)
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please, fill the data";
                    } else if (!RegExp(r'^[0-9+$]').hasMatch(value)) {
                      return "please, fill the number";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: _passwordController,
                  maxLength: 20,
                  // maxLines: 2,
                  keyboardType: TextInputType.phone,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "please, fill the data";
                    } else if (!RegExp(r'^[0-9+$]').hasMatch(value)) {
                      return "please, fill the number";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.visibility),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print(_usernameController.text);
                        print(_passwordController.text);
                      }
                    },
                    child: Text("Confirm")),
                    Text(_usernameController.text),
                    Text(_passwordController.text)
              ],
            )));
  }
}

class iconPage extends StatefulWidget {
  const iconPage({super.key});

  @override
  State<iconPage> createState() => _iconPageState();
}

class _iconPageState extends State<iconPage> {
  bool _lightIsOn = false;
  bool _homeStatus = false;
  Color _homeColor = Colors.black;
  bool _loveStatus = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15), //เว้นระยะรอบวัตถุ 15 pixel
      child: Column(
        children: [
          GestureDetector(
              onDoubleTap: () {
                setState(() {
                  _lightIsOn = !_lightIsOn;
                });
              },
              child: Icon(
                Icons.lightbulb,
                size: 50,
                color: _lightIsOn ? Colors.yellow : Colors.red,
              )),
          GestureDetector(
              onTap: () {
                setState(() {
                  _homeStatus = !_homeStatus;
                  _homeColor = _homeStatus ? Colors.red : Colors.black;
                });
              },
              onDoubleTap: () {
                setState(() {
                  _homeStatus = !_homeStatus;
                  _homeColor = _homeStatus ? Colors.blue : Colors.black;
                });
              },
              child: Icon(Icons.home, size: 50, color: _homeColor)),
          GestureDetector(
              onTap: () {
                setState(() {
                  _loveStatus = !_loveStatus;
                });
              },
              child: _loveStatus
                  ? Icon(Icons.favorite, size: 50, color: Colors.red)
                  : Icon(Icons.favorite_outline, size: 50, color: Colors.black))
        ],
      ),
    );
  }
}
