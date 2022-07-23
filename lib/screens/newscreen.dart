import 'package:flutter/material.dart';
import 'package:parallax/utils/card.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          decoration: const BoxDecoration(
            
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                    Color.fromARGB(198, 65, 4, 207),
                    Color.fromARGB(255, 1, 2, 11),
                    Color.fromARGB(255, 11, 22, 106)
                  ])),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/demo.png',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Hi, RUE',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      Text('Los Anegeles, CA',
                          style: TextStyle(
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: CardUtil(),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SizedBox(
                    width: size.width - 70,
                    child: const Text(
                      'Your Favourites',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 200,
                  width: size.width,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 200,
                        width: 100,
                        color: Colors.pink,
                      );
                    }, separatorBuilder: (BuildContext context, int index)=> const SizedBox(width: 20,),
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
