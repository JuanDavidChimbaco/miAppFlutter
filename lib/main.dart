import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main()=> runApp(const MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Mi App",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: const Text("Mi App")
      ),*/
      body:
        cuerpo(),

      /*Center(
          child: ElevatedButton(
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.access_time),
                SizedBox(
                  width: 10,
                  //height: 7,
                ),
                Text("Now"),
              ],
            ),
            onPressed: (){
              var t = DateTime.now();
              if (kDebugMode) {
                print(t);
              }
            },
          ),
        )*/

      /*ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child: Image.network("https://i.pinimg.com/originals/93/15/ff/9315ff8edd088b4264d793e04f84299f.jpg"),
          ),
        ],
      )*/

      /*Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children:[
          Container(
            height: 50,
            //height: MediaQuery.of(context).size.height*0.5,
            width: MediaQuery.of(context).size.width*0.5,
            child: Text("Hola", textAlign: TextAlign.center),
          ),
          Text("Fultter")
        ],
      )*/
    );
  }
}

Widget cuerpo(){
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(image: NetworkImage("https://dark.netflix.io/share/global.png"),
      fit: BoxFit.cover
      )
    ),
    child:
         Center(
          //mainAxisAlignment: MainAxisAlignment.center, //lo puedo volver un banner
          //crossAxisAlignment: CrossAxisAlignment.end,
          //children: [
            //Container(
              //height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  nombre(),

                ],
              ),
            ),
          //],
        //),
  );
}

Widget nombre(){
  return const Text("Sign In",
    style: TextStyle(
        color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold
    ),
  );
}

Widget usuario(){
  return TextField(
    decoration: InputDecoration(
      hintText: "User",
    ),
  );
}
