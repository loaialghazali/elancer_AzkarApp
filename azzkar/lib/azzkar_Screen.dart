import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AzzkarScreen extends StatefulWidget {
  const AzzkarScreen({Key? key}) : super(key: key);

  @override
  State<AzzkarScreen> createState() => _AzzkarScreenState();
}



class _AzzkarScreenState extends State<AzzkarScreen> {

  int counter = 0;
  String tit = 'الحمدلله';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actionsIconTheme: IconThemeData( color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'سبحة أذكار ',
          style: TextStyle(
            fontFamily: 'Amiri',
            fontSize: 25,
            color: Colors.black,
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if(value!=tit){
                setState(() {
                  tit = value;
                  counter=0;
                });
              }
            },

            icon: Icon(Icons.menu ),
            itemBuilder: (context) {
              return[
                const CheckedPopupMenuItem(
                  value: 'الحمدلله',
                  child: Text(
                    'الحمدلله'
                  ),
                ),
                const CheckedPopupMenuItem(
                  value: 'استغفر الله',
                  child: Text(
                      'استغفر الله'
                  ),
                ),
                const CheckedPopupMenuItem(
                  value: 'الله أكبر',
                  child: Text(
                      'الله أكبر'
                  ),
                ),
              ];
            },
          ),
          IconButton(onPressed: (){
            Navigator.pushNamed(context,
                '/about_screen',
            arguments: {
              'massage' : 'مشروع إيلانسر'
            }
            );
          },
              icon: Icon( Icons.info_outline),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('images/th.jpg'),
                radius: 60,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                height: 60,
                child: Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(tit,
                            style:
                                TextStyle(fontFamily: 'Amiri', fontSize: 30)),
                      ),
                    ),
                    Container(
                      height: double.infinity,
                      width: 50,
                      decoration: BoxDecoration(color: Colors.teal.shade900),
                      child: Center(
                        child: Text(
                          counter.toString(),
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 20,),

              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            ++counter;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal.shade800,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.only(
                              topStart: Radius.circular(10),
                            ),
                          ),
                        ),
                        child: Text(
                          'تسبيح',
                          style: TextStyle(fontSize: 25, fontFamily: 'Amiri'),
                        )),
                  ),

                  Expanded(
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        counter=0;
                      });
                    },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange.shade700,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.only(
                            bottomEnd: Radius.circular(10),
                          ),
                        ),
                      ),
                      child: Text('إعادة',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Amiri'
                        ),
                      ),),
                  ),
                ],
              ),

            ],

          ),
        ),
      ),
    );
  }
}
