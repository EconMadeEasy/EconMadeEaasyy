import 'dart:io';
import 'dart:ui';

import 'package:econ_made_easy_files/Aplication_Screens/Exercitii%20Group/SelectExerciseTypeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipe_detector/flutter_swipe_detector.dart';

class InfoScreen1 extends StatelessWidget {
  const InfoScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 300,
          child: Image.asset(
            'lib/images/Illustration34_1.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
        const Text(
          'Ai nevoie de ajutor la mate pentru Evaluarea Nationala?',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Text(
          'Ai venit unde trebuie!',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}

class InfoScreen2 extends StatelessWidget {
  const InfoScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 300,
          child: Image.asset(
            'lib/images/Illustration37.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
        const Text(
          'Zeci de modele de teste si multe resurse de incredere',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Text(
          'Pentru a te ajuta la examen.',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}

class InfoScreen3 extends StatelessWidget {
  const InfoScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 300,
          child: Image.asset(
            'lib/images/Duplicat_2.png',
            filterQuality: FilterQuality.medium,
          ),
        ),
        const Text(
          'Teste personalizate pentru orice exercitii de la EN',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Text(
          'Cu recompense pe masura.',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}

class MovieList extends StatefulWidget {
  const MovieList({super.key});

  @override
  State<MovieList> createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> with TickerProviderStateMixin {
  static int pageIndex = 0;
  var pages = const [
    InfoScreen1(),
    InfoScreen2(),
    InfoScreen3(),
  ];
  late AnimationController controller;

  final pageController = PageController(initialPage: 0);
  @override
  void dispose() {
    pageController.dispose();
    controller.dispose();

    super.dispose();
  }

  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
      animationBehavior: AnimationBehavior.values.last,
    )..addListener(() {
        setState(() {
          if (controller.value > 0.99) {
            debugPrint('hello');
            if (pageIndex < 3) {
              pageIndex++;
              pageController.jumpToPage(pageIndex);
            } else {
              pageIndex = 0;
              pageController.jumpToPage(pageIndex);
            }
          }
        });
      });

    controller.repeat(reverse: false);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      SizedBox(
        width: 1100,
        height: double.infinity,
        child: Image.asset(
          'lib/images/logindoodle.jpg',
          filterQuality: FilterQuality.medium,
          fit: BoxFit.cover,
        ),
      ),
      SizedBox(
        width: 1100,
        height: double.infinity,
        child: Container(
          color: Colors.black87,
        ),
      ),
      Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.all(
            Radius.circular(60),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'E N',
                  style: TextStyle(
                    fontSize: 82,
                    fontWeight: FontWeight.w300,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  ' A B L E  ',
                  style: TextStyle(fontSize: 80, fontWeight: FontWeight.w100),
                ),
              ],
            ),
            SizedBox(
              width: 800,
              height: 400,
              child: PageView(
                controller: pageController,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  InfoScreen1(),
                  InfoScreen2(),
                  InfoScreen3(),
                ],
              ),
            ),
            Container(
              width: 100,
              margin: const EdgeInsets.symmetric(horizontal: 250),
              child: LinearProgressIndicator(
                backgroundColor: Colors.white,
                color: Colors.blue.shade200,
                minHeight: 20,
                value: controller.value,
                semanticsLabel: 'Linear progress indicator',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const SelectExerciseTypeScreen();
                  },
                ));
              },
              child: Container(
                width: 400,
                height: 60,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.blue),
                child: const Center(
                  child: Text(
                    'Hai sa incepem!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    ]);
  }
}
