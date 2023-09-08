import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 100,
          backgroundColor: Colors.green,
          leading: IconButton(
            icon: Icon(Icons.credit_card),
            color: Colors.white,
            onPressed: () {},
          ),
          title: Text(
            'Home',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.white,
              onPressed: () {},
            )
          ],
          elevation: 70,
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Text(
              'This is mode 5 Asserment',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            )),
            Text.rich(TextSpan(
                text: 'My ',
                style: TextStyle(color: Color(0xFFE92366), fontSize: 20),
                children: [
                  TextSpan(
                      text: 'phone ',
                      style: TextStyle(color: Color(0xFF5CB1F5), fontSize: 17)),
                  TextSpan(
                      text: 'name ',
                      style: TextStyle(
                          color: Color(0xFFE66DFB),
                          fontSize: 19,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: 'Your ',
                      style: TextStyle(color: Color(0xFFFEA21B)),
                      children: [
                        TextSpan(
                            text: 'Phone ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'Name'),
                      ]),
                ]))
          ],
        ),
      ),
    );
  }
}
