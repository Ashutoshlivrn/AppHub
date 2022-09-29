import 'package:flutter/material.dart';


class Speakup extends StatefulWidget {
  const Speakup({Key? key}) : super(key: key);

  @override
  State<Speakup> createState() => _SpeakupState();
}

class _SpeakupState extends State<Speakup> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(

        backgroundColor: Colors.black87,
        actions: [
           Center(
             child: Column(
               //verticalDirection: VerticalDirection.down,
               //mainAxisAlignment: MainAxisAlignment.center,
               children: const [
                 Text('GOOGLE',style: TextStyle(color: Colors.white,fontSize: 23),),
                 SizedBox(height: 25,),
                 CircleAvatar(

                   radius: 35 ,
                   backgroundColor: Colors.blueAccent ,
                   child: Icon(Icons.speaker_phone_rounded,size: 40,color: Colors.black,),
                 ),
                 SizedBox(height: 25,),
                 Text('Try saying something',style: TextStyle(color: Colors.white),),
                 SizedBox(height: 37,),

                 Text('English (Australia)',style: TextStyle(fontSize:10,color: Colors.white),),
                 SizedBox(height: 5,)
               ],
             ),
           )
        ],
      );

  }
}
