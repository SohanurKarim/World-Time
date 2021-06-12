import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('About'),
        centerTitle: true,
        elevation: 0,
      ),
     body:Container(
     width: 130,
       height: 130,
       decoration: BoxDecoration(
           border: Border.all(
               width: 4,
               color: Theme.of(context).scaffoldBackgroundColor),
           boxShadow: [
             BoxShadow(
                 spreadRadius: 2,
                 blurRadius: 10,
                 color: Colors.black.withOpacity(0.1),
                 offset: Offset(0, 10))
           ],
           shape: BoxShape.circle,
           image: DecorationImage(
               fit: BoxFit.cover,
               image: AssetImage('assets/uk.png'))),
     ),

    );
  }
}
