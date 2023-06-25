import 'package:flutter/material.dart';

class secondSelectExerciseTypeIIIScreen extends StatefulWidget {
  const secondSelectExerciseTypeIIIScreen({super.key});

  @override
  State<secondSelectExerciseTypeIIIScreen> createState() =>
      _secondSelectExerciseTypeIIIScreenState();
}

class _secondSelectExerciseTypeIIIScreenState
    extends State<secondSelectExerciseTypeIIIScreen> {
  static var selectedMaterials = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade600,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: const EdgeInsets.only(top: 40, left: 40),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 40),
                        child: Text(
                          'Alege-ti exercitiile la care vrei sa exersezi!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                height: 40,
                width: 150,
                child: InkWell(
                  onTap: () {
                    // forward to next page
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Center(
                          child: Text(
                            'Inainte  ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w100),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    selectedMaterials[0] = !selectedMaterials[0];
                  });
                },
                child: Container(
                  height: 250,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.red.shade500,
                      border: Border.all(
                          color: (selectedMaterials[0] == true)
                              ? Colors.red.shade800
                              : Colors.red.shade500,
                          width: 5)),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            (selectedMaterials[0] == true)
                                ? Container(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          top: 10, right: 10),
                                      child: Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                  )
                                : Container(),
                            Container(
                              margin: const EdgeInsets.only(top: 24),
                              child: Center(
                                child: SizedBox(
                                  height: 80,
                                  child: Image.asset(
                                      'lib/images/graficfunctiegradI.png'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Functii de gradul I',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '120 de exercitii',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w100,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedMaterials[1] = !selectedMaterials[1];
                  });
                },
                child: Container(
                  height: 250,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.red.shade500,
                      border: Border.all(
                          color: (selectedMaterials[1] == true)
                              ? Colors.red.shade800
                              : Colors.red.shade500,
                          width: 5)),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            (selectedMaterials[1] == true)
                                ? Container(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          top: 10, right: 10),
                                      child: Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                  )
                                : Container(),
                            Container(
                              margin: const EdgeInsets.only(top: 24),
                              child: Center(
                                child: SizedBox(
                                  height: 80,
                                  child: Image.asset(
                                      'lib/images/geometryImage.png'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Geometrie in plan',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '128 de exercitii',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w100,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedMaterials[2] = !selectedMaterials[2];
                  });
                },
                child: Container(
                  height: 250,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.red.shade500,
                      border: Border.all(
                          color: (selectedMaterials[2] == true)
                              ? Colors.red.shade800
                              : Colors.red.shade500,
                          width: 5)),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            (selectedMaterials[2] == true)
                                ? Container(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          top: 10, right: 10),
                                      child: Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                  )
                                : Container(),
                            Container(
                              margin: const EdgeInsets.only(top: 50),
                              child: Center(
                                child: Text(
                                  'E(x) = 2x + 65 - 4y',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w100,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Ecuatii liniare',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '135 de exercitii',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w100,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    selectedMaterials[3] = !selectedMaterials[3];
                  });
                },
                child: Container(
                  height: 250,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.red.shade500,
                      border: Border.all(
                          color: (selectedMaterials[3] == true)
                              ? Colors.red.shade800
                              : Colors.red.shade500,
                          width: 5)),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            (selectedMaterials[3] == true)
                                ? Container(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          top: 10, right: 10),
                                      child: Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                  )
                                : Container(),
                            Container(
                              margin: const EdgeInsets.only(top: 30),
                              child: Center(
                                child: SizedBox(
                                  height: 80,
                                  child: Image.asset(
                                    'lib/images/sistemecuatii.png',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Sisteme de ecuatii',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '112 de exercitii',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w100,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedMaterials[4] = !selectedMaterials[4];
                  });
                },
                child: Container(
                  height: 250,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.red.shade500,
                      border: Border.all(
                          color: (selectedMaterials[4] == true)
                              ? Colors.red.shade800
                              : Colors.red.shade500,
                          width: 5)),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            (selectedMaterials[4] == true)
                                ? Container(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          top: 10, right: 10),
                                      child: Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                  )
                                : Container(),
                            Container(
                              margin: const EdgeInsets.only(top: 50),
                              child: Center(
                                child: Text(
                                  '(a + b)\u{00B2}',
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w100,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Formule de calcul prescurtat',
                              style: TextStyle(
                                fontSize: 31,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '142 de exercitii',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w100,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedMaterials[5] = !selectedMaterials[5];
                  });
                },
                child: Container(
                  height: 250,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.red.shade500,
                      border: Border.all(
                          color: (selectedMaterials[5] == true)
                              ? Colors.red.shade800
                              : Colors.red.shade500,
                          width: 5)),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            (selectedMaterials[5] == true)
                                ? Container(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          top: 10, right: 10),
                                      child: Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                  )
                                : Container(),
                            Container(
                              margin: const EdgeInsets.only(top: 30),
                              child: Center(
                                child: SizedBox(
                                  height: 90,
                                  child: Image.asset(
                                    'lib/images/functiegradIIgraph.png',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Functii de gradul II',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '123 de exercitii',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w100,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}