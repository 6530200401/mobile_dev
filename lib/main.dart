import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: Text("My Flutter",style: TextStyle(color: Color))
        home: Scaffold(
            backgroundColor: Colors.blue[100],
            appBar: AppBar(
              backgroundColor: Colors.indigoAccent[400],
              title: Text(
                "My Application",
                style: TextStyle(color: Colors.black),
              ),
              centerTitle: true,
              leading: Icon(
                Icons.list,
                color: Colors.black,
              ),
              actions: [
                Icon(Icons.home, color: Colors.black),
                Icon(Icons.logout, color: Colors.black),
              ],
            ),
            // floatingActionButton: FloatingActionButton(onPressed: (){print("Click");},
            // child: Icon(Icons.forum, color: Colors.black,),
            // backgroundColor: Colors.blue[100],
            // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            // ),
            floatingActionButton: FloatingActionButton.extended(
              onPressed: () {},
              label: Text(
                "Message",
                style: TextStyle(color: Colors.black),
              ),
              icon: Icon(
                Icons.forum,
                color: Colors.black,
              ),
              backgroundColor: Colors.indigoAccent[400],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
            ),
            bottomNavigationBar: BottomNavigationBar(items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), label: "Cart"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.contact_support), label: "Support")
            ]),
            // body: Center(child: Text("Halo Halo")),
            body: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.home,
                      size: 50,
                    ),
                    Icon(
                      Icons.person,
                      size: 50,
                    ),
                    Icon(
                      Icons.favorite_outline,
                      size: 50,
                    ),
                    Text(
                      "สวัสดี.",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontFamily: "Mali"),
                    ),
                    Icon(
                      Icons.favorite_outline,
                      size: 50,
                    ),
                  ],
                ),

                Align(
                  child: Icon(
                    Icons.person,
                    size: 50,
                  ),
                  alignment: Alignment.topLeft,
                ),
                // Text("Flutter",
                //     style: GoogleFonts.k2d(textStyle: TextStyle(fontSize: 25))),
                Image.asset(
                  "img/zero_two_OO.jpg",
                  width: 200,
                  height: 200,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage("img/zero_two_OO.jpg"),
                    ),
                    Image.network(
                      "https://i.pinimg.com/736x/df/19/bd/df19bd0d5d857d31d608d706172d11cd.jpg",
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://static.wikitide.net/greatcharacterswiki/5/53/Zero_Two.jpg"),
                            fit: BoxFit.cover),
                        color: Colors.yellow,
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            // color: Colors.grey.withOpacity(0.5),
                            blurRadius: 5,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                      child: Text('Hello'),
                    ),
                  ],
                ),

                Container(
                  height: 200,
                  width: double.infinity,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        color: Colors.blue,
                        height: 100,
                        width: double.infinity,
                      ),
                      Container(
                        color: Colors.pink,
                        height: 100,
                        width: double.infinity,
                      ),
                      Container(
                        color: Colors.purple,
                        height: 100,
                        width: double.infinity,
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(top: 10),
                    itemExtent: 70,
                    children: [
                      ListTile(
                        leading: Icon(Icons.restaurant),
                        title: Text("ขา้วราดกะเพรา"),
                        subtitle: Text("ธรรมดา 50 พเิศษ/ทะเล 60"),
                        trailing: Icon(Icons.add),
                      ),
                      ListTile(
                        leading: Icon(Icons.restaurant),
                        title: Text("ขา้วไขเ่ จยีว"),
                        subtitle: Text("ธรรมดา 25 พเิศษ40"),
                        trailing: Icon(Icons.add),
                      ),
                      ListTile(
                        leading: Icon(Icons.restaurant),
                        title: Text("ราดหนา้"),  
                        subtitle: Text("ธรรมดา 50 พเิศษ/ทะเล 60"),
                        trailing: Icon(Icons.add),
                      ),
                    ],
                  ),
                )
              ],
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.endFloat));
  }
}
