import 'package:flutter/material.dart';
import './status_bar_height.dart';
import './app_bar.dart';
import './cards.dart';
import './latest_wallpaper.dart';
import './app_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Icon customicon = const Icon(Icons.search);
  Widget customsearch = Text(
    'Anime Wallpaper',
    style: TextStyle(color: Color(0xFFf2f5f6), fontSize: 25),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Color(0x002b4b00),
            secondary: Colors.grey,
            brightness: Brightness.light),
      ),
      home: Scaffold(
        backgroundColor: Color(0xFF002b4b),
        appBar: AppBar(
          actions: [
            IconButton(
              iconSize: 30,
              color: Color(0xFFf2f5f6),
              onPressed: () {
                setState(() {
                  if (customicon.icon == Icons.search) {
                    customicon = const Icon(Icons.cancel);
                    customsearch = const ListTile(
                      title: TextField(
                        // maxLength: 20,
                        decoration: InputDecoration(
                          hintText: 'Search your Item',
                          hintStyle: TextStyle(
                            color: Color(0xFFf2f5f6),
                            fontSize: 25,
                          ),
                          border: InputBorder.none,
                        ),
                        // onSubmitted: (){},
                        style: TextStyle(
                          color: Color(0xFFf2f5f6),
                          fontSize: 25,
                        ),
                      ),
                    );
                  } else {
                    customicon = const Icon(Icons.search);
                    customsearch = Text('Anime Wallpaper',
                        style: TextStyle(
                          color: Color(0xFFf2f5f6),
                          fontSize: 25,
                        ));
                  }
                });
              },
              icon: customicon,
              // Icon(Icons.search),
            ),
          ],
          title: customsearch,
          backgroundColor: Color(0xFF002b4b),
          elevation: 0,
          leading: IconButton(
            iconSize: 30,
            color: Color(0xFFf2f5f6),
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: (650),
                  child: ListView(
                    children: [
                      CustomCards(),
                      Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsetsDirectional.only(top: 20),
                          child: LatestWallpaper()),
                      Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsetsDirectional.only(top: 20),
                          child: LatestWallpaper()),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
