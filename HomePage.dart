import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Advanced Layout Project",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26),),

      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Colors.lightBlue[200],
                height: 200,
              ),
              Positioned(
                  top: 30,
               child: Text("Welcome To Flutter!",style: TextStyle(color: Colors.white,fontSize: 29,fontWeight: FontWeight.bold))
              )
            ],

          ),
          Expanded(child: ListView.builder(
            padding: EdgeInsets.all(10),
              itemCount: 15,
              itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.all(5),
                   width: 100,
                  height: 50,
                 decoration: BoxDecoration(
                   color: Colors.primaries[index],
                   borderRadius: BorderRadius.circular(10)
                 ),
                  child: ListTile(
                    leading: Icon(Icons.star,size: 25,color: Colors.white,),
                    title: Text("Item ${index+1}",style: TextStyle(fontSize: 25,color: Colors.white),),
                  ),
                );
              }
          )
          )
        ],
      ),
      
    );
  }
}
