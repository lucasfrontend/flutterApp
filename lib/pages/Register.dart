import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  
  String nombre = '';
  bool _ojo = true;
  bool isChecked = true;

  TextEditingController _inputDateController =   TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical:10, horizontal: 20),
        children: [
          _nombreInput(),
          const SizedBox(height: 20),
          _EmailInputState(),
          const SizedBox(height: 20),
          _passwordInput(),
          const SizedBox(height: 20),
          _passwordInput(),
          const SizedBox(height: 20),
          _datepickerInput(),
          const SizedBox(height: 20),
          _checkBox(),
        ],
      )
    );
  }
  
  Widget _nombreInput() {
    return TextField(
      //Control de las mayusculas
      textCapitalization: TextCapitalization.sentences,
      //Estilos
      decoration: InputDecoration(
        //borde
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
        ),
        counterText: nombre.length.toString() + '/20',
        counterStyle: nombre.length >=20 ? TextStyle(color: Colors.red, fontSize: 14)
            : TextStyle(color: Colors.blue, fontSize: 14),
        hintText: 'Escriba su nombre',
        //La etiqueta para espeficar el nombre input
        label: Text('Nombre'),
        helperText: 'Unicamente el nombre',
        icon: Icon(Icons.account_box),
        //para cambiar el color y la forma del borde al hacer focus
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(width: 4, color: Colors.amber)
        ),
      ),
     onChanged:(value){
        //Guardar lo que tengamos en el input
       //Actualizar la vista
       setState(() {
         nombre = value;
       });
     } ,
    );
 }

  Widget _EmailInputState(){

    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          hintText: 'Escribe tu email',
          label: Text('Email'),
          icon: Icon(Icons.email)
      ),
    );
  } 

  Widget _passwordInput() {

    return TextField(
      //Por defecto esta en text
      keyboardType: TextInputType.text,
      obscureText: _ojo,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          hintText: 'Escriba su nombre',
          //La etiqueta para espeficar el nombre input
          label: Text('Contraseña'),
          helperText: 'LA contraser{a no debe ser mayor a',
          icon: Icon(Icons.password),
          suffixIcon: GestureDetector(
            onTap: (){
              setState(() {
                _ojo = !_ojo;
              });
            },
          child: Icon(Icons.remove_red_eye) ,
      )
      ),
    );
  }

   Widget _datepickerInput() {
    //Primero debemos crear el input
    return TextField(
      //TextEditingCotroller entre otras cosas nos permite
      // controlar el texto del input
      controller: _inputDateController,
      decoration: InputDecoration(
       border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(20)
       ),
       hintText: 'Ecoja su fecha de nacimiento',
       label: Text('Fecha'),
       icon: Icon(Icons.date_range)
      ),
      //Debemos haer que muestre el calendario al tocar el input
      onTap:(){
        //Quitar el foco del input para que el calendario no desaparezca
        FocusScope.of(context).requestFocus(new FocusNode());
        //Metodo que se va encargar de pintar el calendario
        _selectDate();
      } ,
    );
  }

    void _selectDate() async {
    //Variable para guardar fecha seleccionada, respuesta asíncrona.
    DateTime? fechaSeleccionada = await showDatePicker(
        context: context,
        //Fecha de hoy seleccionada por defecto
        initialDate: new DateTime.now(),
        //Fecha minima
        firstDate: new DateTime(1920),
        //Ultima fecha
        lastDate: new DateTime(2056),
        locale: Locale('es')
    );
    //Una vez reciba la respuesta continúa la ejecución el metodo async: 
    if(fechaSeleccionada != null){
      setState(() {
        //Le digo al controller que renderize la fecha parseada a string, librería Intl:
        _inputDateController.text = DateFormat('dd-MM-yyyy').format(fechaSeleccionada);
      });
    }
  }

  Widget _checkBox() {

    return ListTile(
      title: Text('Acepto los terminos '),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (bool? value){
          setState(() {
            isChecked = value!;
          });
        },
      ),
    );
  }

}