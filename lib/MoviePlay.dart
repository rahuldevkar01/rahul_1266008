
import 'package:flutter/material.dart';
import 'package:moviepage/MovieScreen.dart';

void main(){
  runApp(Movieplay());
}

class Movieplay extends StatelessWidget {
  const Movieplay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MovieScreen(),
        debugShowCheckedModeBanner: false,
    );}
}



        //   Scaffold(
    //   //appBar: AppBar(title:Center(child: Text("Movie play")),),
    //   appBar: AppBar(
    //     title:Center(child: Text("Movie play")),
    //   backgroundColor: Colors.blue,
    //     leading: Builder(builder: (BuildContext context) {
    //       return IconButton(
    //         onPressed: () {
    //
    //          }, icon: const Icon(Icons.arrow_back_ios_new_outlined));
    // },),),
    //



//   }
// }