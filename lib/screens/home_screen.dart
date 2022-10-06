import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/listview1_screen.dart';

class Home_screen extends StatelessWidget {
   
  const Home_screen({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.access_time_outlined),
          title: const Text('Nombre de ruta'),
          onTap: () {

            final route = MaterialPageRoute(
              builder: (context) => const listview1_screen()
            );

            Navigator.pushReplacement(context, route );
             Navigator.pushNamed(context, 'card' );
            
          },
        ),
        separatorBuilder: ( _,__ ) => const Divider(),
        itemCount: 10,
      )
    );
  }
}