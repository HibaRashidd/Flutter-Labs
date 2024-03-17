import 'package:flutter/material.dart';

import '../../components/widgets/left_column_widget.dart';
import '../../components/widgets/right_column_widget.dart';
import 'detail_view_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Map imageList2 = {
    'assets/images/orange.png' : 'assets/images/grapes.png',
    'assets/images/watermelon.png' : 'assets/images/strawberries.png',
  };

  Map imageList = {
    'assets/images/banana.png' : 'assets/images/blueberry.png',
    'assets/images/mango.png' : 'assets/images/pineapple.png',
  };

  Map fruitNames = {
    'Banana' : 'Blueberry',
    'Mango' : 'Pineapple',
 };

  Map fruitNames2 = {
    'Orange' : 'Grapes',
    'Watermelon' : 'Strawberries',
 };

  Map bgColors = {
    Colors.pinkAccent.shade100 : Colors.redAccent.shade100,
    Colors.redAccent.shade100 : Colors.greenAccent.shade100,
  };

  Map bgColors2 = {
    Colors.orange.shade100 : Colors.yellowAccent.shade100,
    Colors.amberAccent.shade100: Colors.blueGrey.shade100,
  };

  Map rates = {
    '\$5.0' : '\$9.2',
    '\$25.5' : '\$20.4',
  };

  Map rates2 = {
    '\$10.0' : '\$13.2',
    '\$3.0' : '\$6.9',
  };

  @override
  Widget build(BuildContext context) {
    
     moveTo (var where){
      return Navigator.push(context, MaterialPageRoute(builder: (context)=> where)); 
    } 
    
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// === Custom Top App Bar ===
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40, width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Align(
                      alignment: Alignment.center,
                      child: Icon(Icons.arrow_back_ios_new,
                        size: 18,)),
                ),
                Image.asset('assets/images/menu.png',height: 30, width: 30,)
              ],
            ),
          ),

          // === Fruits and berries (Text) ===
          const Padding(
            padding: EdgeInsets.only(left: 20,bottom: 15),
            child: Text('Fruits and berries',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900),),
          ),

          // === Search Bar ===
          Container(
            height: 60,
            margin: const EdgeInsets.only(left: 20,right: 20),
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const ListTile(
              leading: Icon(Icons.search),
              title: Text('Search',style: TextStyle(color: Colors.grey),),
            ),
          ),

          /// === ListView Builder ===
          const SizedBox(height: 10,),
          Flexible(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
                itemCount: 2,
                itemBuilder: (BuildContext context, int index){
              return Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // === Left Column Widget ====
                    LeftColumnWidget(
                        title: fruitNames.keys.elementAt(index),
                        subtitle: '1kg',
                        rate: rates.keys.elementAt(index),
                        imagePath: imageList.keys.elementAt(index),
                        bgColor: bgColors.keys.elementAt(index),
                        onTapi: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>
                              DetailViewScreen(
                                title: fruitNames.keys.elementAt(index),
                                subtitle: '1kg',
                                rate: rates.keys.elementAt(index),
                                imagePath: imageList.keys.elementAt(index),
                                bgColor: bgColors.keys.elementAt(index),
                              )
                          ));

                        },

                        title2: fruitNames.values.elementAt(index),
                        subtitle2: '1kg',
                        rate2: rates.values.elementAt(index),
                        imagePath2: imageList.values.elementAt(index),
                        bgColor2: bgColors.values.elementAt(index),
                        onTapi2: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>
                              DetailViewScreen(
                            title: fruitNames.values.elementAt(index),
                            subtitle: '1kg',
                            rate: rates.values.elementAt(index),
                            imagePath: imageList.values.elementAt(index),
                            bgColor: bgColors.values.elementAt(index),
                          )));
                        }
                    ),
            
                    const SizedBox(width: 20,),
            
                    // === Right Column Widget ====
                    RightColumnWidget(
                        title: fruitNames2.keys.elementAt(index),
                        subtitle: '1kg',
                        rate: rates2.keys.elementAt(index),
                        imagePath: imageList2.keys.elementAt(index),
                        bgColor: bgColors2.keys.elementAt(index),
                        onTapi: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>
                          DetailViewScreen(
                            title: fruitNames2.keys.elementAt(index),
                            subtitle: '1kg',
                            rate: rates2.keys.elementAt(index),
                            imagePath: imageList2.keys.elementAt(index),
                            bgColor: bgColors2.keys.elementAt(index),
                          )));
                        },

                        title2: fruitNames2.values.elementAt(index),
                        subtitle2: '1kg',
                        rate2: rates2.values.elementAt(index),
                        imagePath2: imageList2.values.elementAt(index),
                        bgColor2: bgColors2.values.elementAt(index),
                        onTapi2: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>
                          DetailViewScreen(
                            title: fruitNames2.values.elementAt(index),
                            subtitle: '1kg',
                            rate: rates2.values.elementAt(index),
                            imagePath: imageList2.values.elementAt(index),
                            bgColor: bgColors2.values.elementAt(index),
                          )));
                        }
                    ),
                  ],
                ),
              );
            }),
          ),

          const SizedBox(height: 10,),


        ]
      ),
    );
  }
}
