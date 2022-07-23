import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: ()=> Get.back(),
          child: Container(
            color: Colors.blue,
            height: 100,
            width: 200,
            child: Text('back' 
              
            ),
          ),
        ),
      ),
    );
  }
}
