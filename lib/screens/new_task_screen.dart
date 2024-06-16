import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_app/providers/form_provider.dart';
import 'package:task_app/widgets/new_task_card.dart';

class NewTaskScreen extends StatelessWidget {
   
  const NewTaskScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    final formprovider = Provider.of<FormProvider>(context);
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Center(
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 35,),
              const NewTaskCard(),
              const SizedBox(height: 35,),
              ElevatedButton(onPressed: () {
                //TODO:crear provider para estado del formulario
                if(!formprovider.getValidation.currentState!.validate()){
                   print('Formulario no valido');
                      return;
                }else{
                  print('sivalida');
                }
                
              }, child: const Text('Create Task'))
            ],
           ),
        ),
      ),
    );
  }
}