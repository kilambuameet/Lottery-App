import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});



  @override
  State<MyApp> createState() => _MyAppState();
}

Random random= Random();
class _MyAppState extends State<MyApp> {

  int x=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions:const [
            Icon(Icons.settings)
          ],
          title: const Center(
            child: Text('Lottery App')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           const Center(
              child: Text('Lottery winning number is 5')),
           const SizedBox(height: 20,),
            Container(
              height:250,
             // width: 300,
              decoration:  BoxDecoration(
                color: x==5?Colors.green.withOpacity(.3) : Colors.red.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: x==5 ? 
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.done,color: Colors.green,size: 35,),
                    SizedBox(height: 14,),
                    Text('Congratulation!!! You Have Won The Lottery,\nYour number is $x',textAlign: TextAlign.center,),
                    SizedBox(height: 20,),
                    Text('Your Winning Amout is NPR 10000000',textAlign: TextAlign.center,)
                  ],
                ) :
           
                 Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.error,color: Colors.red,size: 35,),
                    SizedBox(height: 14,),
                    Text('Better luck next time,Your number is $x \n Try again',textAlign: TextAlign.center,)
                  ],
                ),
              ),
            )  
            
          ],
        ),
        

        floatingActionButton: FloatingActionButton(
          onPressed: () { 
           // print(random.nextInt(100).toString());
            x = random.nextInt(10);
            print(x);
            //print('Tap');
            setState(() {  });
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}