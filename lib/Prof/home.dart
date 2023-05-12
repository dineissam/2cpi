import 'dart:async';

import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

void main() {
  runApp(const Examapp());
}

class Examapp extends StatelessWidget {
  const Examapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
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
            title: const Text("App name"),
            centerTitle: true,
            backgroundColor: const Color.fromRGBO(0, 36, 107, 1),
            elevation: 0,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.notifications,
                    color: Color.fromRGBO(173, 173, 173, 1),
                    size: 30,
                  ),
                ),
              ),
            ],
            leading: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.menu,
                  color: Color.fromRGBO(173, 173, 173, 1),
                  size: 30,
                ),
              ),
            ),
          ),
          resizeToAvoidBottomInset: false,
          body: const ExamPage(),
        ),
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
  TextEditingController textController = TextEditingController();
  bool _isPressed1 = false;
  bool _isPressed2 = false;
  bool _isPressed3 = false;

  void _showMessage1() {
    setState(() {
      _isPressed1 = true;
    });
    Timer(const Duration(seconds: 2), () {
      setState(() {
        _isPressed1 = false;
      });
    });
  }

  void _showMessage2() {
    setState(() {
      _isPressed2 = true;
    });
    Timer(const Duration(seconds: 2), () {
      setState(() {
        _isPressed2 = false;
      });
    });
  }

  void _showMessage3() {
    setState(() {
      _isPressed3 = true;
    });
    Timer(const Duration(seconds: 2), () {
      setState(() {
        _isPressed3 = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/Home/BGH.jpg"), fit: BoxFit.cover)),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15),
        child: AnimSearchBar(
          width: 360,
          textFieldColor: const Color.fromRGBO(210, 210, 210, 1.0),
          style: const TextStyle(
            color: Color.fromRGBO(0, 24, 71, 1),
            fontFamily: "Gadugi",
            fontWeight: FontWeight.bold,
          ),
          prefixIcon: const Icon(
            Icons.search_rounded,
            color: Color.fromRGBO(173, 173, 173, 1),
            size: 30,
          ),
          textController: textController,
          textFieldIconColor: const Color.fromRGBO(244, 202, 65, 1),
          color: const Color.fromRGBO(0, 24, 71, 1),
          helpText: "Search...",
          onSuffixTap: () {
            setState(() {
              textController.clear();
            });
          },
          autoFocus: true,
          animationDurationInMilli: 700,
          onSubmitted: (String) {},
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 150, left: 30, right: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: _showMessage1,
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(117, 117, 117, 1),
                          spreadRadius: 2,
                          blurStyle: BlurStyle.inner,
                          blurRadius: 20,
                          offset: Offset(5, 5),
                        ),
                      ],
                      image: const DecorationImage(
                          image: AssetImage("images/Home/Schedule.jpg"),
                          fit: BoxFit.cover)),
                  child: Center(
                    child: Container(
                      color: Colors.white60,
                      child: Text(
                        _isPressed1 ? 'SCHEDULE' : '',
                        style: const TextStyle(
                          color: Color.fromRGBO(0, 36, 107, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: TextButton(
                  onPressed: _showMessage2,
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(117, 117, 117, 1),
                            spreadRadius: 2,
                            blurStyle: BlurStyle.inner,
                            blurRadius: 20,
                            offset: Offset(5, 5),
                          ),
                        ],
                        image: const DecorationImage(
                            image: AssetImage("images/Home/classes.jpg"),
                            fit: BoxFit.cover)),
                    child: Center(
                      child: Container(
                        color:Colors.white60,
                        child: Text(
                          _isPressed2 ? 'CLASSES' : '',
                          style: const TextStyle(
                            color: Color.fromRGBO(0, 36, 107, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ) ,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: TextButton(
                  onPressed: _showMessage3,
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(117, 117, 117, 1),
                            spreadRadius: 2,
                            blurStyle: BlurStyle.inner,
                            blurRadius: 20,
                            offset: Offset(5, 5),
                          ),
                        ],
                        image: const DecorationImage(
                            image: AssetImage("images/Home/note.jpg"),
                            fit: BoxFit.cover)),
                    child: Center(
                      child: Container(
                        color:Colors.white60,
                        child: Text(
                          _isPressed3 ? 'NOTES' : '',
                          style: const TextStyle(
                            color: Color.fromRGBO(0, 36, 107, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ) ,
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
