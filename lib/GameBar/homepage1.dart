import 'package:apphub/OFFERS/Offers.dart';
import 'package:apphub/Boooks4/books1.dart';
import 'package:apphub/SpeakUp.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

import '../AppBar/homepage2.dart';
import 'package:apphub/GoogleAccounts.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}



class _HomePage1State extends State<HomePage1> {
  int initialIndex=0;
  List list=[

    TabsInAppBar1(),
    TabsInAppBar2(),
    TabsInAppBar3(),
    TabsInAppBar4(),




  ];
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: ClipRect(
        child: Scaffold(

          body: list[initialIndex] ,

          bottomNavigationBar: CurvedNavigationBar(
            height: 55,

              index: initialIndex,
              onTap:
              (index){
                setState(() {
                  initialIndex= index;
                });
              },
              // letIndexChange: (index) => true,
              items: const[
                Icon(Icons.gamepad_outlined,size: 17,semanticLabel: 'Games'),
                Icon(Icons.apps,size: 17,semanticLabel: 'Apps',),
                Icon(Icons.library_books,size: 17,semanticLabel: 'OFFERS',),
                Icon(Icons.local_offer_rounded,size: 17,semanticLabel: 'Boooks4',),

              ],
          ),
        ),
      ),
    );
  }
}

class TabsInAppBar1 extends StatefulWidget {
  const TabsInAppBar1({Key? key}) : super(key: key);

  @override
  State<TabsInAppBar1> createState() => _TabsInAppBar1State();
}
class _TabsInAppBar1State extends State<TabsInAppBar1> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(

        length: 6,
        child: Scaffold(


  appBar: AppBar(
            elevation: 2,
            automaticallyImplyLeading: false,
            // backgroundColor: Colors.blueAccent.shade400,
            backgroundColor: Color.fromRGBO(0,0,0,70),
            // leading: CupertinoSearchTextField(backgroundColor: Colors.white),
            // leading: Column(
            //   children: [
            //     TextField(
            //       onChanged: (value) => CupertinoSearchTextField(),
            //       decoration: InputDecoration(
            //          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 200),
            //         hintText: 'Search',
            //         prefixIcon: Icon(Icons.search),
            //         border: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(20),
            //           borderSide: BorderSide(),
            //         )
            //       ),
            //     ),
            //   ],
            // ),
            // // actions: [
            // //   Icon(Icons.add),
            // //   Divider(height: 8,color: Colors.transparent,),
            // //   Icon(Icons.add),
            // // ],
            // leading: Icon(Icons.search,color: Colors.white,),
            //
            title:  CupertinoSearchTextField(
                decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
                ),
                // backgroundColor: Colors.blueGrey,
            ) ,
            actions: [
              IconButton(onPressed: (){
                showDialog(context: context, builder: (BuildContext context){

                  return Speakup();

                }
                );

              }, icon: Icon(Icons.speaker_phone_rounded,color: Colors.white,)),
              Divider(height: 10,color: Colors.transparent,),
              IconButton(onPressed: (){
                showDialog(context: context, builder: (BuildContext context){

                  return GoogleAccounts();

                }
                );
                // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> GoogleAccounts() ));
              }, icon: Icon(Icons.account_circle) ),

            ],

            bottom:  TabBar(

                indicatorSize: TabBarIndicatorSize.tab,
                isScrollable: true,
                splashBorderRadius: BorderRadius.all(Radius.circular(5)),
                // indicator: UnderlineTabIndicator(borderSide: BorderSide(width: 3,style: BorderStyle.solid)),
                //indicator: CircleTabIndicator(color: Colors.black, radius: 5),
                indicator: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.redAccent, Colors.orangeAccent]),
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.redAccent),
                tabs: const [
                  Tab( child: Text('For you')),
                  Tab( child: Text('Top charts')),
                  Tab( child: Text('Children')),
                  Tab( child: Text('Events ')),
                  Tab( child: Text('Premium')),
                  Tab( child: Text('Categories')),


                ]
            ),
          ),

    body: const TabBarView(children: [

            Center(child: Text('For you page, non stop action games'),),
            Center(child: Text('categories and new games'),),
            Center(child: Text('safe for childrens games'),),
            Center(child: Text('events will end in 4 days'),),
            Center(child: Text('get started with all new premium games'),),
            Center(child: Text('choose what you want'),),

          ]),
        ),
      ),
    );
  }
}
// class CircleTabIndicator extends Decoration {
//   final Color color;
//   double radius;
//
//   CircleTabIndicator({required this.color, required this.radius});
//
//   @override
//   BoxPainter createBoxPainter([VoidCallback? onChanged]){
//     return _CirclePainter(color:color, radius:radius);
//   }
// }
// class _CirclePainter extends BoxPainter {
//
//   final double radius;
//   late Color color;
//   _CirclePainter({required this.color, required this.radius});
//
//   @override
//   void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
//     late  Paint _paint;
//     _paint = Paint()..color = color;
//     _paint = _paint ..isAntiAlias = true;
//     final Offset circleOffset =
//         offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
//     canvas.drawCircle(circleOffset, radius, _paint);
//   }
// }
