import 'package:flutter/material.dart';

class RightColumnWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String rate;
  final String imagePath;
  final Color bgColor;
  final VoidCallback onTapi;

  final String title2;
  final String subtitle2;
  final String rate2;
  final String imagePath2;
  final Color bgColor2;
  final VoidCallback onTapi2;
  const RightColumnWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.rate,
    required this.imagePath,
    required this.bgColor,
    required this.onTapi,
    required this.title2,
    required this.subtitle2,
    required this.rate2,
    required this.imagePath2,
    required this.bgColor2,
    required this.onTapi2,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        children: [
          // === First Right Widget ====
          InkWell(
            onTap: (){
              onTapi();
            },
            child: Container(
              height: 300,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                color: Colors.greenAccent.shade100,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage(imagePath)),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              title,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                            const Icon(Icons.more_vert)
                          ],
                        ),
                        Text(
                          subtitle,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w200),
                        ),
                        Text(
                          rate,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.2),
                          borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(15),
                              topLeft: Radius.circular(30))),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          // === Second Right Widget ====
          InkWell(
            onTap: (){
              onTapi2();
            },
            child: Container(
              height: 250,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                color: Colors.pinkAccent.shade100,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage(imagePath2)),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              title2,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                            const Icon(Icons.more_vert)
                          ],
                        ),
                         Text(
                           subtitle2,
                           style: const TextStyle(
                               fontSize: 14, fontWeight: FontWeight.w200),
                         ),
                        Text(
                          rate2,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.2),
                          borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(15),
                              topLeft: Radius.circular(30))),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
