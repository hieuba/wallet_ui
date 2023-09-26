import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  final List<String> categoriesList = [
    'yello',
    'red',
    'blue',
    'black',
    'while',
    'pink',
  ];

  int current = 0;

  var currentText = '';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _scrollView(size, categoriesList, (index) {
            setState(() {
              currentText = categoriesList[index];
            });
            print(categoriesList[index]);
          }),
          _bodyContent(size, currentText),
        ],
      ),
    );
  }

  Widget _bodyContent(Size size, String text) {
    return Container(
      height: size.height * .5,
      color: Colors.blue,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
    );
  }

  Widget _scrollView(
    Size size,
    List<String> listData,
    Function(int) onTap,
  ) {
    return SizedBox(
      height: size.height * 0.1,
      width: size.width,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (context, index) {
          var current = categoriesList[index];
          return Container(
            margin: const EdgeInsets.all(5),
            width: size.width * .2,
            child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    onTap(index);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: current == index
                                ? Colors.red
                                : Colors.transparent)),
                    width: size.width * .2,
                    height: size.height * .05,
                    child: Center(
                      child: Text(
                        categoriesList[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _index(
    Size size,
    List<String> listData,
    Function(int) onTap,
  ) {
    return SizedBox(
      height: size.height * 0.1,
      width: size.width,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (context, index) {
          var current = categoriesList[index];
          return Container(
            margin: const EdgeInsets.all(5),
            width: size.width * .2,
            child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    onTap(index);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: current == index
                                ? Colors.red
                                : Colors.transparent)),
                    width: size.width * .2,
                    height: size.height * .05,
                    child: Center(
                      child: Text(
                        categoriesList[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
