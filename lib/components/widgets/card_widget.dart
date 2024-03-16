import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle01;
 final String? subtitle02;
  final String trailing01;
  final String? trailing02;

  const CardWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle01,
    this.subtitle02,
    this.trailing02,
    required this.trailing01,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 20,left: 15,right: 15),
      child: Center(
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              imagePath,
              height: 90,
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
          ),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subtitle01,
                style:
                const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              ),
              Text(subtitle02!)
            ],
          ),
          trailing:  Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                trailing01,
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
              Text(trailing02!)
            ],
          ),
        ),
      ),
    );
  }
}
//push