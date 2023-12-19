import 'package:flutter/material.dart';
import 'package:triki_clasico/game_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<FormState> _formKey =
      GlobalKey<FormState>(); // id de formulario
  final TextEditingController player1Controller =
      TextEditingController(); // controlador de texto jugador 1
  final TextEditingController player2Controller =
      TextEditingController(); // controlador de texto jugador 2

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 1, 21, 17), // color de backgroud del home
      body: Form(
        key: _formKey, // valida los campos de entrada del form
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              //////// texto titulo ////////
              "Nombre de jugadores",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(15),
              // campo donde se ingresan el nombre del jugador 1
              child: TextFormField(
                controller: player1Controller,
                style: const TextStyle(color: Colors.amber),
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 255, 114, 7)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 255, 7, 7)),
                    ),
                    hintText: "Nombre de Jugador 1",
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 102, 102, 101))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "ingresa el nombre de Jugador 1 ";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              // campo donde se ingresan el nombre del jugador 2
              child: TextFormField(
                controller: player2Controller,
                style: const TextStyle(color: Colors.amber),
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 255, 114, 7)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 255, 7, 7)),
                    ),
                    hintText: "Nombre de Jugador 2",
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 102, 102, 101))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "ingresa el nombre de Jugador 2 ";
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GameScreen(
                        jugador1: player1Controller.text,
                        jugador2: player2Controller.text,
                      ),
                    ),
                  );
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 17, horizontal: 20),
                child: const Text(
                  "iniciar Juego",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
