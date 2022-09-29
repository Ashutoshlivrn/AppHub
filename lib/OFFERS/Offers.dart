import 'package:apphub/GoogleAccounts.dart';
import 'package:apphub/SpeakUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class offers extends StatefulWidget {
  const offers({Key? key}) : super(key: key);

  @override
  State<offers> createState() => _offersState();
}

class _offersState extends State<offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabsInAppBar4(),
    );
  }
}


class TabsInAppBar4 extends StatefulWidget {
  const TabsInAppBar4({Key? key}) : super(key: key);

  @override
  State<TabsInAppBar4> createState() => _TabsInAppBar4State();
}

class _TabsInAppBar4State extends State<TabsInAppBar4> {
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
                height: 20,
                color: Colors.transparent,
              ),
              IconButton(onPressed: () {
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
              child: Text(' Limited time offer shows'),
            ),
            Center(
              child: Text('take a hold'),
            ),
            Center(
              child: Text('kal bhi krna padega'),
            ),
            Center(
              child: Text(' parso bhi'),
            ),
          ]),
        ),
      ),
    );
  }
}