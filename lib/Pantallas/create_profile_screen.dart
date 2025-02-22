import 'package:fjgm75838_userapp/Pantallas/show_profile_screen.dart';
import 'package:flutter/material.dart';

class CreateProfileScreen extends StatefulWidget {
  const CreateProfileScreen({super.key});

  @override
  State<CreateProfileScreen> createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  final TextEditingController  nameController = TextEditingController();
  final TextEditingController  ageController = TextEditingController();
  final TextEditingController  ocupacionController = TextEditingController();

  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Crear Perfil"), ),
      body: Padding(padding:  const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration( labelText: "Nombre"),
          ),
           TextField(
            controller: ageController,
            decoration: const InputDecoration( labelText: "Edad"),
            keyboardType: TextInputType.number,
          ),
           TextField(
            controller: ocupacionController,
            decoration: const InputDecoration( labelText: "Ocupación"),
          ),
          const SizedBox( height: 20),
        ElevatedButton(
              onPressed: () {
                String name = nameController.text;
                String age = ageController.text;
                String occupation = ocupacionController.text;

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(
                      name: name,
                      age: age,
                      occupation: occupation,
                    ),
                  ),
                );
              },
              child: const Text("Guardar y Ver Perfil"),)
        ],
      ),
      ),
    );
  }
}