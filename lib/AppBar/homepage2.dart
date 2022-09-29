import 'package:apphub/GoogleAccounts.dart';
import 'package:apphub/SpeakUp.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  // int initialIndex = 0;
  // List list = [
  //   Center(
  //     child: Text('first page'),
  //   ),
  //   Center(
  //     child: Text('second'),
  //   ),
  //   Center(
  //     child: Text('third page'),
  //   ),
  //   Center(
  //     child: Text('fourth page'),
  //   ),
  // ];
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: ClipRect(
        child: Scaffold(

          // appBar: AppBar(
          //   title:
          //   Text('nazi'),
          //   automaticallyImplyLeading: false,
          //   backgroundColor: Colors.transparent,
          //   shadowColor: Colors.transparent,
          //
          // ),

          //body: list[initialIndex],
          body: TabsInAppBar2(),
          // bottomNavigationBar: CurvedNavigationBar(
          //   height: 55,
          //   index: initialIndex,
          //   onTap: (index) {
          //     setState(() {
          //       initialIndex = index;
          //     });
          //   },
          //   // letIndexChange: (index) => true,
          //   items: const [
          //     Icon(Icons.gamepad_outlined, size: 17, semanticLabel: 'Games'),
          //     Icon(
          //       Icons.apps,
          //       size: 17,
          //       semanticLabel: 'Apps',
          //     ),
          //     Icon(
          //       Icons.local_offer_rounded,
          //       size: 17,
          //       semanticLabel: 'Offers',
          //     ),
          //     Icon(
          //       Icons.library_books,
          //       size: 17,
          //       semanticLabel: 'Books',
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}



class TabsInAppBar2 extends StatefulWidget {
  const TabsInAppBar2({Key? key}) : super(key: key);

  @override
  State<TabsInAppBar2> createState() => _TabsInAppBar2State();
}

class _TabsInAppBar2State extends State<TabsInAppBar2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            elevation: 2,
            automaticallyImplyLeading: false,
            // backgroundColor: Colors.blueAccent.shade400,
            backgroundColor: Color.fromRGBO(0, 0, 0, 70),
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
            title: CupertinoSearchTextField(
                decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
            )),
            actions: [
              IconButton(
                  onPressed: () {
                    showDialog(context: context, builder: (BuildContext context){

                      return Speakup();
                      

                    }
                    );
                  },
                  icon:const  Icon(
                    Icons.speaker_phone_rounded,
                    color: Colors.white,
                  )),
              const Divider(
                height: 10,
                color: Colors.transparent,
              ),
              IconButton(onPressed: () {
               // const GoogleAccounts();
                showDialog(context: context, builder: (BuildContext context){
                  return GoogleAccounts();
                });
              }, icon: Icon(Icons.account_circle)),
            ],
            bottom: TabBar(
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
                  Tab(child: Text('For you')),
                  Tab(child: Text('Top charts')),
                  Tab(child: Text('Children')),
                  Tab(child: Text('Categories')),
                ]),
          ),
          body: const TabBarView(children: [
            Center(
              child: Text('Recommended and for you'),
            ),
            Center(
              child: Text('top on the charts, grab soon'),
            ),
            Center(
              child: Text('everything here is teacher approved'),
            ),
            Center(
              child: Text(' take on and choose what you want '),
            ),
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
//   BoxPainter createBoxPainter([VoidCallback? onChanged]) {
//     return _CirclePainter(color: color, radius: radius);
//   }
// }
//
// class _CirclePainter extends BoxPainter {
//   final double radius;
//   late Color color;
//   _CirclePainter({required this.color, required this.radius});
//
//   @override
//   void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
//     late Paint _paint;
//     _paint = Paint()..color = color;
//     _paint = _paint..isAntiAlias = true;
//     final Offset circleOffset =
//         offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
//     canvas.drawCircle(circleOffset, radius, _paint);
//   }
// }
