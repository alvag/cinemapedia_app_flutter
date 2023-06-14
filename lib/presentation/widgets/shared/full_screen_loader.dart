import 'package:flutter/material.dart';

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({super.key});

  Stream<String> getMessageStream() {
    final messages = <String>[
      'Cargando peliculas',
      'Comprando palomitas',
      'Ajustando el foco',
      'Cargando populares',
      'Cargando proximos estrenos',
      'Cargando mejor valoradas',
      'Cargando cartelera',
      'Ya mero',
      'Esto ya casi termina',
      'Casi listo',
      'Casi casi',
      'Esto esta tardando mucho :(',
    ];

    return Stream.periodic(const Duration(seconds: 1), (int index) {
      return messages[index % messages.length];
    }).take(messages.length);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Espere por favor...'),
          const SizedBox(height: 10),
          const CircularProgressIndicator(strokeWidth: 2),
          const SizedBox(height: 10),
          StreamBuilder(
            stream: getMessageStream(),
            builder: (context, snapshot) {
              return Text(snapshot.data ?? 'Cargando...');
            },
          )
        ],
      ),
    );
  }
}
