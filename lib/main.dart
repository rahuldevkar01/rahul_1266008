import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:moviepage/MoviePlay.dart';
import 'package:moviepage/VideoPlay.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(FisrtClass());
}
class FisrtClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
       home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key?key}):super(key: key);
 // final String flavor;
 // const MyApp({Key?key,this.flavor='dev'}):super(key:key);


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  // late Widget _homeScreen;
  // void iniState(){
  //   super.initState();
  //   _setHomeScreen();
  // }
  // void _setHomeScreen(){
  //   if (widget.flavor=='qa'){
  //     _homeScreen=VideoScreen(url: 'https://demo.unified-streaming.com/k8s/features/stable/video/tears-of-steel/tears-of-steel.ism/.m3u8', dataSourceType: DataSourceType.network,);
  //   }else{
  //     _homeScreen=MyApp();
  //   }
  // }
  @override
   Widget build(BuildContextt )  {
  return homePageView(context);
}
   // static const

  Widget homePageView(BuildContext context) {

    List<String> Movieimages = [
      "asset/image 1.png",
      "asset/image 2.png",
      "asset/image3.png",
      "asset/image 4.png",
      "asset/image 1.png",
      "asset/image 2.png",
      "asset/image3.png",
      "asset/image 4.png",
      "asset/image 1.png",
      "asset/image 2.png",
      "asset/image3.png",
      "asset/image 4.png",
    ];

    List<Widget> widgetOption = <Widget>[
      //Text("HomePage",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold),),
      GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemCount: Movieimages.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              child: Card(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(Movieimages[index]),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(3)
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Builder(
                          builder: (BuildContext context) {
                            return IconButton(onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder:(context)=>const Movieplay(
                              )),);


                            }, icon: const Icon(Icons.play_circle_filled_rounded),
                               color:Colors.white                );
                          }),),
                  ],
                ),),);
          }),
      Text("Show",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
      Text("My Favourite",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
      Text("My Orange",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)
    ];
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              onPressed: () {
                Navigator.pop(context, true);
              }, icon: const Icon(Icons.arrow_back_ios_new_outlined));
        },),
        title: Center(child: Text('Movies')),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.deepOrange,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.black,
        selectedFontSize: 10,
        iconSize: 20,
        items: navigationTab,
        onTap: onItemTapped,
      ),
      body: Container(
        child: widgetOption.elementAt(_selectedIndex),

      ),
    );
  }

  var navigationTab = const [
    BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
    BottomNavigationBarItem(label: "Show", icon: Icon(Icons.movie_filter)),
    BottomNavigationBarItem(label: "Favorites", icon: Icon(Icons.star)),
    BottomNavigationBarItem(
        label: "My Orange", icon: Icon(Icons.account_box_outlined)),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });


  }
}
