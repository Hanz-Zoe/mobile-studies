import 'package:flutter/material.dart';
import 'package:navigator/view/register_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _texts = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: _texts.length,
            itemBuilder: (context, index) {
            return Container();
            },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return RegisterPage(textAppBar: "Registry");
          }));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
