import 'package:flutter/material.dart';

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
                      Icons.qr_code_scanner_rounded,
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
          title: const Text("Scan"),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(0, 36, 107, 1),
          elevation: 0,
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
                image: AssetImage("images/Classes/background.jpg"),
                fit: BoxFit.cover)),
      ),
      Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 45),
            child: Text(
              "Scan QR code to confirm your",
              style: TextStyle(
                color: Color.fromRGBO(79, 80, 84, 1),
                fontSize: 22,
                fontFamily: "Gadugi",
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Text(
            "attendance",
            style: TextStyle(
              color: Color.fromRGBO(79, 80, 84, 1),
              fontSize: 22,
              fontFamily: "Gadugi",
              fontWeight: FontWeight.bold,
            ),
          ),
          const Image(image:AssetImage('images/Hand.jpg'),),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RawMaterialButton(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 40),
                    fillColor: const Color.fromRGBO(0, 36, 107, 1),
                    child: const Text('SCANNING',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: "Gadugi",
                          color: Colors.white,
                        )),
                    onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    ]);
  }
}
