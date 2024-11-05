import 'package:fjgm75838_userapp/Pantallas/create_profile_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: const Text("Inicio"),  backgroundColor: Colors.blue),
body: Center(
  child: ElevatedButton(
    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateProfileScreen()));},
    child: const Text("Crear Perfil")),
),
    );
  }
}