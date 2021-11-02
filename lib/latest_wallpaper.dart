import 'package:flutter/material.dart';
import './list_latest_wallpaper.dart';

class LatestWallpaper extends StatefulWidget {
  const LatestWallpaper({Key? key}) : super(key: key);

  @override
  _LatestWallpaperState createState() => _LatestWallpaperState();
}

class _LatestWallpaperState extends State<LatestWallpaper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.align_vertical_center_outlined,
                color: Color(0xFF0cafae),
                size: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Latest Wallpaper",
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xFFf2f5f6), //Text_color
                ),
              ),
              SizedBox(
                width: 70,
              ),
              InkWell(
                child: Text(
                  "View all",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF0cafae), //Text_color
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          //card components
          ListLatest(),
        ],
      ),
    );
  }
}
