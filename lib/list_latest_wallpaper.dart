import 'package:flutter/material.dart';

class ListLatest extends StatelessWidget {
  final List<String> imageList = [
    'assest/anime1.png',
    'assest/anime2.jpg',
    'assest/anime3.jpg',
    'assest/anime4.jpg',
    'assest/anime5.jpg',
    'assest/anime6.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 325,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    imageList[index],
                    height: 325,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          );
        },
        itemCount: imageList.length,
      ),
    );
  }
}
