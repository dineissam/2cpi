import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
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
        appBar: AppBar(
          title: const Text("Create code"),
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
  TextEditingController editingController =
  TextEditingController(text: 'ListTech');
  String? data;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/Create-code/a.jpg"),
                fit: BoxFit.cover)),
      ),
      Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top:75),
            child: Text("Lesson informations",style:TextStyle(
              color:Color.fromRGBO(0, 36, 107, 1) ,

              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),
          ),
          DottedBorder(
            borderType: BorderType.RRect,
            radius: const Radius.circular(21),
            strokeWidth: 2,
            borderPadding: const EdgeInsets.all(2),
            dashPattern: const [0,0,5,3],
            color:const Color.fromRGBO(0, 36, 107, 1),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 1),
                  width: 350,
                  height: 225,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(217, 217, 217, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 22, left: 20),
                        child: Row(
                          children:const[
                            Icon(Icons.calendar_month_outlined, color:Color.fromRGBO(0, 36, 107, 1),size: 40),
                            Padding(
                              padding: EdgeInsets.only(left: 5,right: 20),
                              child: Text('dd-mm-yyyy',style:TextStyle(

                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),),
                            ),
                            Icon(Icons.school_outlined, color:Color.fromRGBO(0, 36, 107, 1),size: 40),
                            Padding(
                              padding: EdgeInsets.only(left:6),
                              child: Text('TD / Cour',style:TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Row(
                          children:const[
                            Padding(
                              padding: EdgeInsets.only(left: 60,right: 30),
                              child: Text('From',style:TextStyle(

                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left:90),
                              child: Text('to',style:TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only( left: 15),
                        child:
                            Text('------->',style: TextStyle(
                              fontSize: 25
                            ),)
                        ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 20),
                        child: Row(
                          children:const[
                            Padding(
                              padding: EdgeInsets.only(left: 60,right: 30),
                              child: Text('8 AM',style:TextStyle(

                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left:70),
                              child: Text('10 AM',style:TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children:const[
                            Icon(Icons.calendar_month_outlined, color:Color.fromRGBO(0, 36, 107, 1),size: 40),
                            Padding(
                              padding: EdgeInsets.only(left: 5,right: 20),
                              child: Text('Year - G N° - module  ',style:TextStyle(

                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Center(
              child: QrImage(
                backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
                data: '$data',
                version: QrVersions.auto,
                size: 300,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RawMaterialButton(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 10),
                    fillColor: const Color.fromRGBO(0, 36, 107, 1),
                    child: const Text('Generate code',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        )),
                    onPressed: () {
                      setState(() {
                        data = editingController.text;
                      });
                    }),
                RawMaterialButton(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Color.fromRGBO(0, 36, 107, 1),
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 16),
                    fillColor: Colors.white,
                    child: const Text('Check Attendance ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color.fromRGBO(0, 36, 107, 1),
                        )),
                    onPressed: () {
                    }),
              ],
            ),
          ),
        ],
      ),
    ]);
  }
}
