import 'package:flutter/material.dart';

class CastAndCrew extends StatelessWidget {
  List<String> CastImage=[
    "asset/oBrien.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 410,left: 10),
      child:Column( crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Cast and Crew',style: TextStyle(fontSize: 20,color: Colors.white),),
          const SizedBox(width: 10 ,height:  10,),
          Container(
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder:(BuildContext context, int index) {
                  List<String> Names = [
                    'Gavin Veerak',
                    'Nick',
                    'Jake',
                    'Joe',
                    'Robert',
                    'Vera'
                  ];
                  List<String> Role = [
                    'Producer',
                    'Director',
                    'Co-Director',
                    'Actor',
                    'Singer',
                    'Music',
                  ];
                  return Container(width: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage:AssetImage(CastImage.single) ,
                        ),
                        Text(
                            Names[index % Names.length],
                            style:const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )
                        ),
                        SizedBox(width: 10, height: 5,),
                        Text(
                            Role[index% Role.length],
                            style:const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )
                        ),

                      ],
                    ),

                  );
                }   ),
          )

        ],

      ) ,

    );
  }
}
