
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
      title: 'Multiple Text Fields Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(' Text Fields',),
          centerTitle: true,
        ),
        body: const MyForm(),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override

  // ignore: library_private_types_in_public_api
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final TextEditingController _textFieldController1 = TextEditingController();
  final TextEditingController _textFieldController2 = TextEditingController();
  final TextEditingController _textFieldController3 = TextEditingController();
  final TextEditingController _textFieldController4 = TextEditingController();
  final TextEditingController _textFieldController5 = TextEditingController();

  @override
  void dispose() {
    _textFieldController1.dispose();
    _textFieldController2.dispose();
    _textFieldController3.dispose();
    _textFieldController4.dispose();
    _textFieldController5.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
          controller: _textFieldController1,
  decoration: const InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
          width: 3,  color: Colors.greenAccent), 
    ),
  ),
  obscureText: false,
),
          TextField(
            controller: _textFieldController2,
  decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide:
          const BorderSide(width: 3, color: Colors.greenAccent), 
      borderRadius: BorderRadius.circular(50.0),
    ),
  ),
),
const SizedBox(height: 20.0,),
 TextField(
  controller: _textFieldController3,
  decoration: const InputDecoration(
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
          width: 2, color: Colors.grey), 
    ),
  ),
  obscureText: false,
),
const SizedBox(height: 20.0,),
        TextField(
          controller: _textFieldController4,
  decoration: const InputDecoration(
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
          width: 3, color: Colors.greenAccent),
    ),
  ),
       ),
       const SizedBox(height: 30.0,),
   TextField(
    controller: _textFieldController5,
  decoration: const InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
          width: 4, color: Colors.greenAccent), 
          
    ),
  ),
)
        ],
      ),
    );
  }
}
