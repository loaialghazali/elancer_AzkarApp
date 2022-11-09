import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LunchScreen extends StatefulWidget {
  const LunchScreen({Key? key}) : super(key: key);

  @override
  State<LunchScreen> createState() => _LunchScreenState();
}

class _LunchScreenState extends State<LunchScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),
        (){
        Navigator.pushReplacementNamed(context, '/azzkar_screen');
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Colors.teal.shade800,
              Colors.teal.shade300,
            ]
          ),
        ),
        child: Text(
          'مسبحة أذكار',
          style: TextStyle(
            fontFamily: 'Amiri',
            color: Colors.white,
            fontSize: 30
          ),
        ),
      ),
    );
  }
}

