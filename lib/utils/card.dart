import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parallax/screens/home.dart';

class CardUtil extends StatelessWidget {
  const CardUtil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          height: 200,
          width: size.width - 40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: const Image(
              image: AssetImage('assets/Vapor Silk.gif'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Image.asset(
            'assets/chip.png',
            height: 70,
            width: 90,
          ),
        ),
        const Positioned(
            left: 20,
            top: 120,
            child: Text(
              '\u{20B9} 200',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            )),
        Positioned(
            left: size.width - 150,
            top: 130,
            child: Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: const LinearGradient(
                      colors: [Colors.deepPurpleAccent, Colors.blue])),
              child: GestureDetector(
                onTap: ()=> Get.to(const Homepage()),
                child: const Center(
                  child: Text(
                    'REDEEM',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
