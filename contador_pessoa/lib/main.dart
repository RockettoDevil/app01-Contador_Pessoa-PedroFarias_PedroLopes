import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
void decrement(){
  print("Decrement");
}
void increment(){
    print("Increment");
  }
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador de Pessoas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Contador(),
    );
  }
}

class Contador extends StatefulWidget {
  const Contador({ Key? key }) : super(key: key);

  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          const Text("Pode entrar!", style: TextStyle(fontSize: 30, color: Colors.white),), 

          const Text("0", style: TextStyle(fontSize: 100, color: Colors.white),),
  
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              
              TextButton(onPressed: decrement,
              
                        style: TextButton.styleFrom(backgroundColor: Colors.white), 

                        child: Text("Saiu", style: TextStyle(fontSize: 16, color: Colors.black)),
              ),
              
              TextButton(onPressed: increment, child: Text("Entrou", style: TextStyle(fontSize: 16, color: Colors.black),),
              )

            ],
          )
        ],
        
      ),
    );
  }
}
