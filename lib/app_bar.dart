import 'package:flutter/material.dart';

class MyAppbar extends StatefulWidget {
  @override
  _MyAppbarState createState() => _MyAppbarState();
}

class _MyAppbarState extends State<MyAppbar> {
  bool isNotTouched = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: isNotTouched
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {},
                  iconSize: 30,
                  color: Color(0xFFf2f5f6), //Text_color
                ),
                Text(
                  "Anime Wallpaper",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFFf2f5f6), //Text_color
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      isNotTouched = false;
                    });
                  },
                  iconSize: 30,
                  color: Color(0xFFf2f5f6), //Text_color
                ),
              ],
            )
          : (Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.cancel),
                  onPressed: () {
                    setState(() {
                      isNotTouched = true;
                    });
                  },
                  iconSize: 30,
                  color: Color(0xFFf2f5f6), //Text_color
                ),
                TextField(),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    print("Searching for ..");
                  },
                  iconSize: 30,
                  color: Color(0xFFf2f5f6), //Text_color
                ),
              ],
            )),
    );
  }
}
