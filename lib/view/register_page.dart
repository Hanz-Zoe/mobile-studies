import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final String textAppBar;
  const RegisterPage({super.key, required this.textAppBar});


  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _edtText
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.textAppBar), // acessa um dado que está em outra tela ou em classes diferentes
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "lorem ipsum",
                border: OutlineInputBorder(

                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add),
      ),
    );
  }
}
