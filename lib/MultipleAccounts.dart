import 'package:flutter/material.dart';

class MultipleAccounts extends StatefulWidget {
  const MultipleAccounts({Key? key}) : super(key: key);

  @override
  State<MultipleAccounts> createState() => _MultipleAccountsState();
}

class _MultipleAccountsState extends State<MultipleAccounts> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:  Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
           child: SafeArea(
             child: Column(
               children: [
                 Padding(padding: EdgeInsets.all(10)),
         SizedBox(
             child: TextField(
                  cursorColor: Colors.black87,

               decoration: InputDecoration(

                   prefixIcon: BackButton(),
                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                   label: Text('Search your email'),

               ),
             ),
         ),




                ListTile(
                   leading:  CircleAvatar(

                     radius: 22 ,
                     backgroundColor: Colors.blueAccent[100] ,
                     child:  Text('A',style: TextStyle(fontSize: 22),) ,
                   ),
                   title: Text('Ashutosh Kumar 1902024') ,
                   subtitle: Text('1902024.cse.cec@cgc.edu.in') ,
                  onTap: (){},
                 ),
                 ListTile(
                   leading:  CircleAvatar(

                     radius: 22 ,
                     backgroundColor: Colors.blueGrey[900] ,
                     child:  Text('N',style: TextStyle(fontSize: 22, ),) ,
                   ),
                   title: Text('Neha Gupta') ,
                   subtitle: Text('neha555555gupta@gmail.com') ,
                   onTap: (){},
                 ),
                 ListTile(
                   leading:  CircleAvatar(

                     radius: 22 ,
                     backgroundColor: Colors.orange[8002] ,
                     child:  Text('A',style: TextStyle(fontSize: 22),) ,
                   ),
                   title: Text('Ashutosh Kumar',) ,
                   subtitle: Text('ceccse.1902024@gmail.com') ,
                   onTap: (){},
                 ),
                 ListTile(
                   leading:  CircleAvatar(

                     radius: 22 ,
                     backgroundColor: Colors.blueAccent ,
                     child:  Text('A',style: TextStyle(fontSize: 22),) ,
                   ),
                   title: Text('Ashutosh Kumar G') ,
                   subtitle: Text('ichbinashutosh.k@gmail.com') ,
                   onTap: (){},
                 ),


               ],
             ),
           ),
          ),
        ),

      ),
    );
  }
}
