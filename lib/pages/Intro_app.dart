import 'package:flutter/material.dart';
import 'package:t_doctor_app/pages/Main_app.dart';




class IntroApp extends StatefulWidget {
  const IntroApp({Key? key}) : super(key: key);

  @override
  State<IntroApp> createState() => _IntroAppState();
}

class _IntroAppState extends State<IntroApp> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(50),
        
        child: Container(
          alignment: Alignment.center,
          child: TextButton(onPressed: () { 
            Navigator.push(context, MaterialPageRoute(builder: (_) => MainApp()));
           },
          child: Image.asset('assets/images/logo4.png')),

        ),
       
      ),
        
    );
  }
}