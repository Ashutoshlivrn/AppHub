import 'package:apphub/GoogleAccounts.dart';
import 'package:apphub/SpeakUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Books1 extends StatefulWidget {
  const Books1({Key? key}) : super(key: key);

  @override
  State<Books1> createState() => _Books1State();
}

class _Books1State extends State<Books1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: TabsInAppBar3() ,
    );
  }
}


class TabsInAppBar3 extends StatefulWidget {
  const TabsInAppBar3({Key? key}) : super(key: key);

  @override
  State<TabsInAppBar3> createState() => _TabsInAppBar3State();
}

class _TabsInAppBar3State extends State<TabsInAppBar3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 7,
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

                      return Speakup(

                      );

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
                  Tab(child: Text('Ebooks')),
                  Tab(child: Text('Audiobooks')),
                  Tab(child: Text('Comics')),
                  Tab(child: Text('Genres')),
                  Tab(child: Text('Top Selling')),
                  Tab(child: Text('New Releases')),
                  Tab(child: Text('Top Free')),
                ]),
          ),
          body: const TabBarView(children: [
            Center(
              child: Text(' Ebooks page'),
            ),
            Center(
              child: Text('AudioBooks page'),
            ),
            Center(
              child: Text('Comics Page'),
            ),
            Center(
              child: Text('Genres Page'),
            ),
            Center(
              child: Text('Top Selling Page'),
            ),
            Center(
              child: Text('New Releases Page'),
            ),
            Center(
              child: Text('Top Free Page'),
            ),
          ]),
        ),
      ),
    );
  }
}
