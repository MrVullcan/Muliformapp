import 'package:flutter/material.dart';

void main() => runApp(const MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData.dark(),
      home: const InicioSesion(),
    );
  }
}

class InicioSesion extends StatelessWidget {
  const InicioSesion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio de Sesión'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ... Otros widgets de inicio de sesión (usuario y contraseña)

          ElevatedButton(
            onPressed: () {
              // Lógica para validar el usuario y la contraseña

              // Si las credenciales son válidas, navega a la pantalla de bienvenida
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Bienvenida()),
              );
            },
            child: const Text('Iniciar Sesión'),
          ),
        ],
      ),
    );
  }
}

class Bienvenida extends StatelessWidget {
  const Bienvenida({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Usuario Validado'),
        actions: [
          // Icono de validación en la barra de aplicación
          IconButton(
            icon: Icon(Icons.check, color: Colors.green), // Color verde
            onPressed: () {
              // Lógica para acciones adicionales si es necesario
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Texto de bienvenida
            const Text('¡¡¡BIENVENIDO!!!'),

            // Imagen desde archivos locales
            Container(
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lightBlueAccent),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Image.asset(
                "img/imgpaisaje.jpeg",
                width: 400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
