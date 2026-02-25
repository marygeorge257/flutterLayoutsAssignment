import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
           centerTitle: true,
           title: Text("My Flutter App",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
           leading: Icon(Icons.ac_unit_sharp,size: 35,color: Colors.blue,),
           actions: [
             Padding(padding: EdgeInsets.only(right: 20), 
                 child:Icon(Icons.add_alert_sharp,color: Colors.black,size: 35,)
             ),
           
           ],
         ),
      body:
      Padding(padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 5,),
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.lightBlue,
            ),
            width: 350,
            height: 250,
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person,size: 35,fontWeight: FontWeight.bold,),
                ),
                SizedBox(height: 10,),
                Text("Mary George",
                style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                Text("Flutter developer",
                style: TextStyle(fontSize:20 ),
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.facebook,color: Colors.blue[900],),
                    SizedBox(width: 50,),
                    Icon(Icons.facebook,color: Colors.blue[900],),
                    SizedBox(width: 50,),
                    Icon(Icons.facebook,color: Colors.blue[900],),
                    SizedBox(width: 50,),
                  ],
                )

              ],
            )

          ),
        ],
      ),
      )
    );

  }
}

