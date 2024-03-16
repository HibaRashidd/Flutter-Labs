import 'package:flutter/material.dart';

import '../components/widgets/card_widget.dart';

class FlutterLab02 extends StatefulWidget {
  const FlutterLab02({super.key});

  @override
  State<FlutterLab02> createState() => _FlutterLab02State();
}

class _FlutterLab02State extends State<FlutterLab02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text(
          'Flutter Lab02 - 1316',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),

            /// === Circle Avatar ===
            const CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage('https://i.pinimg.com/736x/e7/da/8d/e7da8d8b6a269d073efa11108041928d.jpg'),
            ),

            const SizedBox(
              height: 40,
            ),

            /// === Cards ====
            const CardWidget(
              imagePath: 'https://e0.pxfuel.com/wallpapers/394/980/desktop-wallpaper-hajj-umrah.jpg',
              title: 'Ummrah package',
              subtitle01: 'Makkah and Madina',
              subtitle02: 'Rs: 245,000/-',
              trailing01: '14 Days / 15 Nights',
              trailing02: 'Departure: 14 March',
            ),
            const CardWidget(
              imagePath: 'https://images.pexels.com/photos/3999943/pexels-photo-3999943.jpeg?cs=srgb&dl=pexels-caner-cankisi-3999943.jpg&fm=jpg',
              title: 'Turkey Tour',
              subtitle01: 'Istanbul and Koyna',
              subtitle02: 'Rs: 345,000/-',
              trailing01: '19 Days / 20 Nights',
              trailing02: 'Departure: 20 March',
            ),
            const CardWidget(
              imagePath: 'https://images.unsplash.com/photo-1550586678-f7225f03c44b?q=80&w=1074&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              title: 'Northern Pakistan',
              subtitle01: 'Naran and Hunza',
              subtitle02: 'Rs: 145,000/-',
              trailing01: '6 Days / 7 Nights',
              trailing02: 'Departure: 28 March',
            ),

            Container(
              height: 80,
              margin: const EdgeInsets.only(top: 160),
              alignment: Alignment.bottomCenter,
              width: MediaQuery.sizeOf(context).width,
              color: Colors.deepPurple,
            )
          ],
        ),
      ),
    );
  }
}