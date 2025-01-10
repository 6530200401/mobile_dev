import "package:flutter/material.dart";

class second extends StatelessWidget {
  // final String username;
  // final String password;
  // const second({super.key, required this.username, required this.password});
  const second({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar:AppBar(),
      body: Center(
          child: Column(
        children: [
          Text("This is a second Page"),
          Text(arg["username"]),
          Text(arg["password"]),
          // Text(username),Text(password)
          TextButton(onPressed: (){Navigator.pop(context,'Return');},child: Text("Back"),)
        ],
      )),
    );
  }
}
