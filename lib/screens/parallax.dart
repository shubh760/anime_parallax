import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:parallax/screens/home.dart';

class Parallax extends StatefulWidget {
  const Parallax({Key? key}) : super(key: key);

  @override
  _ParallaxState createState() => _ParallaxState();
}

class _ParallaxState extends State<Parallax> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        double maxScroll = _scrollController.position.maxScrollExtent;
        double currentScroll = _scrollController.position.pixels;
        if (currentScroll == maxScroll) {
          Get.off(Homepage());
        } else {
          _onScroll();
        }
      });

    super.initState();
  }

  double _scrolloffset = 0.0;
  void _onScroll() {
    setState(() {
      _scrolloffset = _scrollController.offset;
    });
  }

  double _layerspeed = 0.5;
  double _layer2speed = 0.45;
  double _layer3speed = 0.42;
  double _layer4speed = 0.375;
  double _layer5speed = 0.3;

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    var layoutsize = screensize.height * 3;
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color.fromARGB(255, 66, 240, 210),
                Color.fromARGB(255, 253, 244, 193)
              ])),
          child: Stack(
            children: [
              Positioned(
                  top: 0,
                  bottom: _layerspeed * _scrolloffset,
                  right: 0,
                  left: 0,
                  child: Lottie.network(
                      'https://assets2.lottiefiles.com/packages/lf20_jfchliut.json')),
              Positioned(
                  bottom: _layer5speed * _scrolloffset,
                  right: 0,
                  left: 0,
                  child: SvgPicture.asset('assets/mountains-layer-2.svg')),
              Positioned(
                  bottom: _layer4speed * _scrolloffset,
                  right: 0,
                  left: 0,
                  child: SvgPicture.asset('assets/mountains-layer-3.svg')),
              Positioned(
                  bottom: _layer3speed * _scrolloffset,
                  right: 0,
                  left: 0,
                  child: SvgPicture.asset('assets/mountains-layer-4.svg')),
              Positioned(
                  bottom: _layer2speed * _scrolloffset,
                  right: 0,
                  left: 0,
                  child: SvgPicture.asset('assets/trees-layer-2.svg')),
              Positioned(
                  bottom: -57 + _layerspeed * _scrolloffset,
                  right: 0,
                  left: 0,
                  child: SvgPicture.asset('assets/layer-1.svg')),
              Positioned(
                  top: screensize.height + (_layerspeed * _scrolloffset * -1),
                  right: 0,
                  left: 0,
                  child: Container(
                      height: screensize.height,
                      color: Colors.black,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Lottie.network(
                            'https://assets1.lottiefiles.com/animated_stickers/lf_tgs_vah0ocru.json'),
                      ))),
              Positioned.fill(
                  child: SingleChildScrollView(
                      controller: _scrollController,
                      child: SizedBox(
                        height: layoutsize,
                      )))
            ],
          )),
    );
  }
}
