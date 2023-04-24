import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviepage/CastAndCrew.dart';
import 'package:moviepage/VideoPlay.dart';
import 'package:moviepage/VideoScreen.dart';
void main(){
  runApp(MovieScreen());
}

class MovieScreen extends StatelessWidget {
  List <String> image = [
    "asset/image 4.png"

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height:double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(image.first),
                  fit:BoxFit.fitHeight),
            ),
          ),
          Container(padding:EdgeInsets.fromLTRB(10, 300, 0, 0),
              child: Row(children: [
              const Text(
                  "ICE- The movie",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  )
              ),
                IconButton(
              onPressed: () {},
                 icon: Icon(
                Icons.favorite_outline_rounded,
                size: 30,
                color: Colors.yellowAccent,
              ),
            ),],
              ),
          ),
          // Positioned( top: 150, left: 40,
          //   child: Text(
          //       "ICE- The movie",
          //       style: TextStyle(
          //          color: Colors.white,
          //           fontSize: 30,
          //           fontWeight: FontWeight.bold
          //       )
          //   ),
          // ),
      // Container(padding:EdgeInsets.fromLTRB(220, 290, 0, 0),
      //       child: IconButton(
      //         onPressed: () {},
      //         icon: Icon(
      //           Icons.favorite_outline_rounded,
      //           size: 30,
      //           color: Colors.yellowAccent,
      //         ),
      //       ),),
          Container(padding: EdgeInsets.fromLTRB(10, 280, 0, 0),
            child: Row(
             children: const [
                Text(
                 "U/A|",
                 style: TextStyle(color:Colors.white,fontSize: 20),
               ),
               Text(
                 "  2h 29m|",
                 style: TextStyle(color:Colors.white,fontSize: 20),
               ),
               Text(
                 "  English|",
                 style: TextStyle(color:Colors.white,fontSize: 20),
               ),
               Text(
                 "  2016",
                 style: TextStyle(color:Colors.white,fontSize: 20),
               )
             ],
           ),
           ),
           Container(padding: EdgeInsets.fromLTRB(10, 350, 0, 0),
             child: Row(
               children: [
                 ElevatedButton(onPressed:() {
                   Navigator.push(context, MaterialPageRoute(builder:(context)=>VideoScreenView()));

                 },
                   style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent), child:const Text(
                       'Watch Now',
                       style: TextStyle(
                         color: Colors.blueAccent,fontWeight: FontWeight.bold,
                       ),
                     ),
                 ),
                 ElevatedButton(onPressed:() {

                 }, child:Text(
                   'Record',
                   style: TextStyle(
                     color: Colors.yellowAccent,fontWeight: FontWeight.bold,
                   ),
                 ),
                   style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
                 ),
                 ElevatedButton(onPressed:() {

                 }, child:Text(
                   'More',
                   style: TextStyle(
                     color: Colors.white,fontWeight: FontWeight.bold,
                   ),
                 ),
                   style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
                 ),



               ],
             ),

           ),


           CastAndCrew(),
        ],
      ),
    );
  }
}

