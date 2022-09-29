import 'package:apphub/MultipleAccounts.dart';
import 'package:flutter/material.dart';
import 'AppBar/homepage2.dart';
class GoogleAccounts extends StatefulWidget {
  const GoogleAccounts({Key? key}) : super(key: key);

  @override
  State<GoogleAccounts> createState() => _GoogleAccountsState();
}

class _GoogleAccountsState extends State<GoogleAccounts> {
  @override
  Widget build(BuildContext context) {

    return AlertDialog(

      backgroundColor: Colors.white,
      scrollable: true,
      actions: [

        SizedBox(
          height: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // IconButton(onPressed: (){
              //  Navigator.of(context).pop;
              // }, icon: Icon(Icons.close)),
              // SizedBox(width: 74,),
              Text('GOOGLE',style: TextStyle( fontSize:20 )),

            ],
          ),

        ),
        SizedBox(height: 23,),
        ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage('Images/night beach.jpg')
            ,radius: 23,),
          title: Text('Ashutosh Kumar'),
          subtitle: Expanded(
            child: const Text('mynameisashutoshkumar1@gmail.com',
                overflow: TextOverflow.ellipsis),

          ),
          trailing: Icon(Icons.arrow_drop_down_circle_outlined,color: Colors.black,) ,
          onTap: () {
            showDialog(context: context, builder: (BuildContext context){
              return MultipleAccounts();
            });


          }, // ye on tap pe extra container add krwana hai    edit. naya page hi add krdiya hu

        ),


        SizedBox(
          height: 40,
          child: Center(
            child: Card(
             shadowColor: Colors.white,
              child: TextButton(onPressed: () {  },
              child: Text('Google Account',style: TextStyle(fontSize: 14.5,color: Colors.black),),)
              //elevation: 0.5,
            ),
          ),
        ),

        Divider(height: 15,),
        //  SizedBox(
        //    height: 40,
        //
        //    child: ListTile(
        //      leading:  ,
        //      title: Text('my first gmail'),
        //      trailing: Text('2'),),
        //  ),
        // SizedBox(
        //    height: 40,
        //    child: ListTile(title: Text('my first gmail'),
        //      trailing: Text('2'),),
        //  ), SizedBox(
        //    height: 50,
        //    child: ListTile(title: Text('my first gmail'),
        //      trailing: Text('2'),),
        //  ), SizedBox(
        //    height: 30,
        //    child: ListTile(title: Text('my first gmail'),
        //      trailing: Text('2'),),
        //  ),
        //
        // ListTile(
        //   title: Text('my first gmail'),
        //   trailing: Text('2'),
        // ),
        // ListTile(
        //   title: Text('my first gmail'),
        //   trailing: Text('2'),
        // ),
        // ListTile(
        //   title: Text('my first gmail'),
        //   trailing: Text('2'),
        // ),

        Container(
          child: Column(
            children:  [
              SizedBox(
                height: 40,
                child: ListTile(

                    leading: Icon(Icons.manage_accounts,color: Colors.black87,),
                    onTap: (){},
                    title: Transform.translate(
                      offset: Offset(-15,0) ,
                      child: Text('Apps and Device',style: TextStyle(fontSize: 17),),
                    )

                  //Text('Manage apps and device'),
                ),
              ),
              SizedBox(
                height: 40,

                child: ListTile(

                    leading: Icon(Icons.notifications,color: Colors.black87,),
                    onTap: (){},
                    title: Transform.translate(
                      offset: Offset(-15,0) ,
                      child: Expanded(child: Text('Offers and notification',
                          style: TextStyle(fontSize: 17,overflow: TextOverflow.ellipsis ),


                      )
                      ),
                    )

                ),
              ),
              SizedBox(
                height: 40,
                child: ListTile(
                    onTap: (){},
                    leading: Icon(Icons.payment_outlined,color: Colors.black87,),
                    title: Transform.translate(
                      offset: Offset(-15,0) ,
                      child: Text('Subscriptions',style: TextStyle(fontSize: 17),),
                    )
                  //title: Text('Payments and Subscriptions'),
                ),
              ),
              SizedBox(
                height: 40,
                child: ListTile(
                    onTap: (){},
                    leading: Icon(Icons.play_circle_filled_outlined,color: Colors.black87,),
                    title: Transform.translate(
                      offset: Offset(-15,0) ,
                      child: Text('Play Protect',style: TextStyle(fontSize: 17),),
                    )
                  //title: Text('Play Protect'),
                ),
              ),
              SizedBox(
                height: 40,
                child: ListTile(
                    onTap: (){},
                    leading: Icon(Icons.local_library_rounded,color: Colors.black87,),
                    title: Transform.translate(
                      offset: Offset(-15,0) ,
                      child: Text('Library',style: TextStyle(fontSize: 17),),
                    )
                  //title: Text('Library'),
                ),
              ),
              SizedBox(
                height: 40,
                child: ListTile(
                    onTap: (){},
                    leading: Icon(Icons.local_play_sharp,color: Colors.black87,),
                    title: Transform.translate(
                      offset: Offset(-15,0) ,
                      child: Text('Play Pass',style: TextStyle(fontSize: 17),),
                    )
                  //title: Text('Play Pass'),
                ),
              ),
              SizedBox(
                height: 40,
                child: ListTile(
                    onTap: (){},
                    leading: Icon(Icons.settings,color: Colors.black87,),
                    title: Transform.translate(
                      offset: Offset(-15,0) ,
                      child: Text('Settings',style: TextStyle(fontSize: 17),),
                    )
                  //title: Text('Settings'),
                ),
              ),
              SizedBox(
                height: 40,
                child: ListTile(
                    onTap: (){},
                    leading: Icon(Icons.help_outline,color: Colors.black87,),
                    title: Transform.translate(
                      offset: Offset(-15,0) ,
                      child: Text('Help and feedback',style: TextStyle(fontSize: 17),),
                    )
                  //title: Text('Help and feedback',style: TextStyle(fontSize: 15),),
                ),
              ),
            ],
          ),
        ),
        Divider(height: 10,),

        Container(
          child: Row(
            children: [

              TextButton(onPressed: (){}, child: Text('Privacy Policy')),
              Text('-'),
              TextButton(onPressed: (){}, child: Text('Terms of Service'))
            ],
          ),
        )
      ],
    );

  }
}

class AddID extends StatefulWidget {
  const AddID({Key? key}) : super(key: key);

  @override
  State<AddID> createState() => _AddIDState();
}
class _AddIDState extends State<AddID> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 40,
            child: ListTile(
                leading: Icon(Icons.manage_accounts),

                title: Transform.translate(
                  offset: Offset(-15,0) ,
                  child: Text('Manage',style: TextStyle(fontSize: 17),),
                )
              //Text('Manage apps and device'),
            ),
          ),
          SizedBox(
            height: 40,
            child: ListTile(
                leading: Icon(Icons.manage_accounts),

                title: Transform.translate(
                  offset: Offset(-15,0) ,
                  child: Text('Manage apps',style: TextStyle(fontSize: 17),),
                )
              //Text('Manage apps and device'),
            ),
          ),
        ],
      ),
    );
  }
}
