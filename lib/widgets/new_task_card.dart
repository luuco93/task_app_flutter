import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_app/providers/form_provider.dart';

class NewTaskCard extends StatelessWidget {
   
  const NewTaskCard({super.key});
  
  @override
  Widget build(BuildContext context) {
    final formprovider = Provider.of<FormProvider>(context);
    final tamnno = MediaQuery.of(context).size;
     GlobalKey<FormState> milocalKey = GlobalKey<FormState>();
    
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 10,
      child: Column(
        children: [
          Container(
            color: Colors.blue[200],
            width: tamnno.width ,
            height: 30,
            child: const Center(child: Text('New Task')),
          ),
          //TODO: agregar validiaciones al formulario
           Form(
            key: formprovider.settValidation = milocalKey,
            child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              children: [
                SizedBox(height: 20,),
                _NameInput(),
                SizedBox(height: 45,),
                _DescriptionInput(),
                SizedBox(height: 20,),
            
            ],),
          ))
         /*  Container(
            color: Colors.blue,
            width: 200,
            height: 200,
          ) */
        ],
      ),
    );
  }
}

class _NameInput extends StatelessWidget {
  const _NameInput();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null) return 'Este campo es requerido';

        return value.length < 3 ? 'Minimo  de 3 letras ' : null;
      },
      decoration: const InputDecoration(

        label: Text('Name') 
      ),
    );
  }
}

class _DescriptionInput extends StatelessWidget {
  const _DescriptionInput();

  @override
  Widget build(BuildContext context) {
    return TextFormField(   
      autofocus: false,
      maxLength: 200,
      maxLines: null,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null) return 'Este campo es requerido';

        return value.length < 0 ? 'Minimo  de 3 letras ' : null;
      },
      //TODO: agrgar colores a los bordes
      decoration: const InputDecoration(
        label: Text('Description') ,
        
        border: OutlineInputBorder(
          borderRadius:BorderRadius.all(
            Radius.circular(10)
          ) 
          
          ),
      ),
       );
  }
}