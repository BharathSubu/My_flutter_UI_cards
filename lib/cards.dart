import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCards extends StatefulWidget {
  const CustomCards({Key? key}) : super(key: key);

  @override
  _CustomCardsState createState() => _CustomCardsState();
}

class _CustomCardsState extends State<CustomCards> {
  final List imageList = [
    'assest/main6.jpg',
    'assest/main5.jpg',
    'assest/main4.jpg',
    'assest/main3.jpg',
    'assest/main2.jpg',
    'assest/main1.jpg',
    'assest/main0.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider.builder(
        itemCount: imageList.length,
        options: CarouselOptions(
          enlargeCenterPage: true,
          height: 200,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          reverse: false,
          aspectRatio: 5.0,
        ),
        itemBuilder: (context, i, id) {
          //for onTap to redirect to another screen
          return GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.grey,
                  )),
              //ClipRRect for image border radius
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  imageList[i],
                  width: 500,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            onTap: () {
              var url = imageList[i];
              print(url.toString());
            },
          );
        },
      ),
    );
  }
}
