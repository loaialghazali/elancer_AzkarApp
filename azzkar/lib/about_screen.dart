import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {

  String massage ='مسبحة أذكار';

  @override
  Widget build(BuildContext context) {
    ModalRoute? modalRoute =  ModalRoute.of(context);
    if(modalRoute != null){
      Map<String , dynamic> arguments =
      modalRoute.settings.arguments as Map<String , dynamic>;

      if(arguments.containsKey('massage'))
      {
          massage = arguments['massage'];
      }
    }

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed:  (){
          Navigator.pop(context);
        } , icon:Icon( Icons.arrow_back_ios)),
        title: Text(massage ,
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'Amiri',
          fontSize: 25,
        )),
      ),

      body: Center(child: Text('مسبحة')),
    );
  }
}
