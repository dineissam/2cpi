import 'Colors.dart';
import 'package:flutter/material.dart';

import 'package:ionicons/ionicons.dart';
import 'Combobox.dart';

void main() {
  runApp(const MyApp());
}

IconData icn = Ionicons.eye_off_outline;
bool hide = true;
final emailController =  TextEditingController();
String emailErrorText = '';
List<String> list = <String>['Student', 'teacher'];

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.chevron_left,
                color: kSign,
                size: 50,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            backgroundColor: kBar,
            elevation: 0),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/backgroundimage2.jpg'),
                    fit: BoxFit.cover)),
          ),
          Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(49, 10, 190, 34),
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    color: kSign,
                    fontSize: 40,
                    fontFamily: 'Tahoma',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 33),
                child: Text(
                  'We are happy to see you here !',
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Tahoma',
                      fontWeight: FontWeight.w400,
                      color: kSign),
                ),
              ),
               Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        hintText: "E-mail",
                        hintStyle: TextStyle(color: kField),
                        prefixIcon: Icon(Ionicons.mail_outline
                        )
                        ),
                        
                              
                  )),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "Username",
                      hintStyle: TextStyle(color: kField),
                      prefixIcon: Icon(Ionicons.person_outline)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: hide,
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: const TextStyle(color: kField),
                      prefixIcon: const Icon(Ionicons.key_outline),
                      suffixIcon: IconButton(
                          icon: Icon(icn),
                          onPressed: () {
                            setState(() {
                              hide = false;

                              icn = Ionicons.eye_outline;
                            });
                          })),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "ID card number",
                      hintStyle: TextStyle(color: kField),
                      prefixIcon: Icon(Ionicons.card_outline)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: DropdownButtonExample()),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: RawMaterialButton(
                        onPressed: () {},
                        fillColor: kButton,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        child: const Text(
                          'Sign up',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'Gadugi'),
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account  ',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontFamily: 'gadugi-normal')),
                    GestureDetector(
                        onTap: () {},
                        child: const Text('Log in',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.red,
                              fontFamily: 'gadugi-normal',
                            ))),
                  ],
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
