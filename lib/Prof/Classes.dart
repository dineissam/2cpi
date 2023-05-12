import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';



void main() {
  runApp(const Examapp());
}

class Examapp extends StatelessWidget {
  const Examapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          child: Container(
            height: 64,
            width: 369,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(215, 215, 195, 1),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.perm_contact_calendar_rounded,
                      color: Color.fromRGBO(0, 36, 107, 1),
                      size: 35,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: const Color.fromRGBO(0, 36, 107, 1),
                    radius: 30,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.home,
                        color: Color.fromRGBO(244, 202, 65, 1),
                        size: 30,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.list_alt,
                      color: Color.fromRGBO(0, 36, 107, 1),
                      size: 35,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        appBar: AppBar(
          title: const Text("Classes"),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(0, 36, 107, 1),
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.chevron_left,
                color: Color.fromRGBO(173, 173, 173, 1),
                size: 45,
              ),
            ),
          ),
        ),
        resizeToAvoidBottomInset: false,
        body: const ExamPage(),
      ),
    );
  }
}

class ExamPage extends StatefulWidget {
  const ExamPage({super.key});

  @override
  State<ExamPage> createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/Classes/BGHH.jpg"),
                fit: BoxFit.cover)),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 50),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30, left: 22.5),
                child: Text(
                  "Years",
                  style: TextStyle(
                    color: Color.fromRGBO(0, 36, 107, 1),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Gadugi',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 13, left: 22.5),
                child: Text(
                  "First year :",
                  style: TextStyle(
                    color: Color.fromRGBO(244, 202, 65, 1),
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Gadugi',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      if (index==2){
                        return Padding(
                          padding: const EdgeInsets.only(left: 15,right: 20),
                          child: DottedBorder(
                            borderType: BorderType.Circle,
                            strokeWidth: 4,
                            dashPattern: const [0,0,8,10],
                            color:const Color.fromRGBO(173, 173, 173, 1) ,
                            child: SizedBox(
                              width: 156,
                              child: Center(
                                child: InkWell(
                                  onTap: () {
                                    // Handle button press
                                  },
                                  child: const Icon(
                                    Icons.add_rounded,
                                    size: 70,
                                    color:Color.fromRGBO(173, 173, 173, 1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                      else{
                        return Container(
                          width: 156,
                          decoration:  BoxDecoration(
                            border:
                            Border.all(
                              color: Colors.white,
                              width: 5,
                              style: BorderStyle.solid,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                                spreadRadius: 2,
                                blurRadius: 1,
                              ),
                            ],
                            color: const Color.fromRGBO(198, 195, 195, 1),
                            shape: BoxShape.circle,
                          ),
                          margin: const EdgeInsets.only(left: 15),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:  [
                                const Text(
                                  "Module ",
                                  style: TextStyle(
                                    color: Color.fromRGBO(0, 36, 107, 1),
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Gadugi',
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Group N°$index",
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Gadugi',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                    }
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 13, left: 22.5),
                child: Text(
                  "Second year :",
                  style: TextStyle(
                    color: Color.fromRGBO(244, 202, 65, 1),
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Gadugi',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 200,
                  child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        if (index==2){
                          return Padding(
                            padding: const EdgeInsets.only(left: 15,right: 20),
                            child: DottedBorder(
                              borderType: BorderType.Circle,
                              strokeWidth: 4,
                              dashPattern: const [0,0,8,10],
                              color:const Color.fromRGBO(173, 173, 173, 1) ,
                              child: SizedBox(
                                width: 156,
                                child: Center(
                                  child: InkWell(
                                    onTap: () {
                                      // Handle button press
                                    },
                                    child: const Icon(
                                      Icons.add_rounded,
                                      size: 70,
                                      color:Color.fromRGBO(173, 173, 173, 1),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }
                        else{
                          return Container(
                            width: 156,
                            decoration:  BoxDecoration(
                              border:
                              Border.all(
                                color: Colors.white,
                                width: 5,
                                style: BorderStyle.solid,
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black,
                                  spreadRadius: 2,
                                  blurRadius: 1,
                                ),
                              ],
                              color: const Color.fromRGBO(198, 195, 195, 1),
                              shape: BoxShape.circle,
                            ),
                            margin: const EdgeInsets.only(left: 15),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:  [
                                  const Text(
                                    "Module ",
                                    style: TextStyle(
                                      color: Color.fromRGBO(0, 36, 107, 1),
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Gadugi',
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      "Group N°$index",
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Gadugi',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }
                      }
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 13, left: 22.5),
                child: Text(
                  "Third year :",
                  style: TextStyle(
                    color: Color.fromRGBO(244, 202, 65, 1),
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Gadugi',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 200,
                  child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        if (index==2){
                          return Padding(
                            padding: const EdgeInsets.only(left: 15,right: 20),
                            child: DottedBorder(
                              borderType: BorderType.Circle,
                              strokeWidth: 4,
                              dashPattern: const [0,0,8,10],
                              color:const Color.fromRGBO(173, 173, 173, 1) ,
                              child: SizedBox(
                                width: 156,
                                child: Center(
                                  child: InkWell(
                                    onTap: () {
                                      // Handle button press
                                    },
                                    child: const Icon(
                                      Icons.add_rounded,
                                      size: 70,
                                      color:Color.fromRGBO(173, 173, 173, 1),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }
                        else{
                          return Container(
                            width: 156,
                            decoration:  BoxDecoration(
                              border:
                              Border.all(
                                color: Colors.white,
                                width: 5,
                                style: BorderStyle.solid,
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black,
                                  spreadRadius: 2,
                                  blurRadius: 1,
                                ),
                              ],
                              color: const Color.fromRGBO(198, 195, 195, 1),
                              shape: BoxShape.circle,
                            ),
                            margin: const EdgeInsets.only(left: 15),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:  [
                                  const Text(
                                    "Module ",
                                    style: TextStyle(
                                      color: Color.fromRGBO(0, 36, 107, 1),
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Gadugi',
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      "Group N°$index",
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Gadugi',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }
                      }
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
