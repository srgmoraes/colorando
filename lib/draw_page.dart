import 'package:flutter/material.dart';

class DrawPage extends StatelessWidget {
  const DrawPage({Key? key, this.url}) : super(key: key);

  final String? url;

  @override
  Widget build(BuildContext context) {

    return Container( color: Colors.white, child: Column(

      children: [

      Card(
        elevation: 0,
        child: ListTile(
          leading: IconButton(onPressed: () {  Navigator.pop(context); }, icon: Icon(Icons.arrow_back)),
          //trailing: IconButton(onPressed: () {   }, icon: Icon(Icons.filter_vintage)),
        ),
      ),

      Card(
          elevation: 0,
          color: Colors.white,
          child: Container(child: Image.network(url!))
      ) ,
    ],));

 }

}