import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: const Color(0xffeacda3),
            title: const Text('Assignment 3',style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
          ),
          body: Center(
            child: GestureDetector(
              onTap: (){
                Fluttertoast.showToast(msg: 'You Clicked The Button');
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 175,
                decoration: BoxDecoration(
                  borderRadius:  BorderRadius.circular(25.0),
                  gradient: const LinearGradient(colors: [
                    Color(0xff874da2),
                    Color(0xffc43a30)
                  ]),

                ),
                child: const Text('Press Me',style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              ),
            ),
          )
        ),
      ),
    );
  }
}
