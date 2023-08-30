import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String text;

  //final IconData icon;
  final Color color;
  final bool isSelected;
  final String imagePath;
  //final FontStyle font;

  const CategoryButton({
    super.key,
    required this.text,
    //required this.icon,
    required this.color,
    required this.isSelected,
    required this.imagePath,
    //required this.font,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 100,
      decoration: BoxDecoration(
          color: isSelected ? color : Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 7,
              blurRadius: 12,
              offset: Offset(0, 10), // changes position of shadow
            ),
          ],
          border: Border.all(
            color: Colors.black,
            width: 3.0,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              imagePath,
              width: 100.0,
              height: 100.0,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height:20.0),
          Text(
            text,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
              fontFamily: 'AmaticSC',
            ),
          ),
        ],
      ),
    );
  }
}