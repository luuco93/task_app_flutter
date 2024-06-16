import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _MenuButton(ruta: '/new_task',name:'New Task' ,),
            _MenuButton(ruta: '/list_task',name:'List Task',),
            _MenuButton(ruta: '/report_task',name:'Task Report' ,),
            SizedBox(height: 10,)
            ],
        ),
      ),
    );
  }
}

class _MenuButton extends StatelessWidget {

  final String ruta; 
  final String name; 
  const _MenuButton({
    required this.ruta, required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:() => Navigator.pushNamed(context,ruta), 
     child:SizedBox( width: 200,height: 100,
      child: Center(child: Text(name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold))))
    );
  }
}
