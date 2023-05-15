import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Boton Con Imagen JEYAPP';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
          primarySwatch: Colors.cyan,
          ),
        home: MainPage(),
        
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorDark,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('¿Qué quieres aprender hoy?'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(40),
        children: [
          Center(child: buildCircleButton()),
          const SizedBox(height: 40),
          Center(child: buildButton1()),
          const SizedBox(height: 40),
          Center(child: buildButtonLeftImage()),
          const SizedBox(height: 40),
          Center(child: buildButtonRightImage()),
        ],
      ),
    );
  }

  Widget buildButton1() => Material(
        color: Colors.blue,
        elevation: 3,
        borderRadius: BorderRadius.circular(10),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          splashColor: Colors.black26,
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Ink.image(
                  image: AssetImage('assets/lenguae.jpeg'),
                  fit: BoxFit.cover,
                  width: 300,
                  height: 140,
                ),
                SizedBox(),
                Text(
                  '',
                  style: TextStyle(),
                ),
                SizedBox(),
              ],
            ),
          ),
        ),
      );

  Widget buildCircleButton() => Material(
        elevation: 8,
        color: Colors.transparent,
        shape: CircleBorder(),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              child: Ink.image(
                image: AssetImage('assets/matematica.jpeg'),
                height: 150,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      );

  Widget buildButtonLeftImage() => Material(
        color: Colors.blue,
        elevation: 8,
        borderRadius: BorderRadius.circular(10),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          splashColor: Colors.black26,
          onTap: () {},
          child: Container(
            height: 150,
            width: 300,
            child: Row(
              children: [
                Ink.image(
                  image: AssetImage('assets/cienciass.jpeg'),
                  fit: BoxFit.cover,
                  width: 300,
                  height: 200,
                ),
                const SizedBox(),
                Expanded(
                  child: Text(
                    '',
                    style: TextStyle(),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget buildButtonRightImage() => Material(
        color: Colors.blue,
        elevation: 8,
        borderRadius: BorderRadius.circular(10),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          splashColor: Colors.black26,
          onTap: () {},
          child: Container(
            height: 150,
            width: 300,
            child: Row(
              children: [
                Expanded(
                  child: Text(''),
                ),
                Ink.image(
                  image: AssetImage('assets/cienciasn.jpeg'),
                  fit: BoxFit.cover,
                  width: 300,
                  height: 160,
                ),
              ],
            ),
          ),
        ),
      );
}
