import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
  String nombre = '';
  bool _ojo = true;
  bool isChecked = true;

  TextEditingController _inputDateController =   TextEditingController();

  @override
  Widget build(BuildContext context) {
    //ancho y alto de pantalla
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      //alpedo
      backgroundColor: Colors.white,
      body: Column(children: [
        Container(
          width: w,
          height: h*0.3,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'lib/assets/funjump.jpg'
              ),
              fit: BoxFit.cover
            )
          )

        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          width: w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'BarriApp',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'Ingresá a tu cuenta',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey
                ),
              ),
              const SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset: Offset(1, 1),
                      color: Colors.grey.withOpacity(0.2)
                    )
                  ]
                ),
                child: _nombreInput(),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset: Offset(1, 1),
                      color: Colors.grey.withOpacity(0.2)
                    )
                  ]
                ),
                child: _nombreInput(),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(child: Container()),
                  Text(
                'Olvidaste tu password?',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey
                ),
              ),
                ],
              ),
            ]
            ),
        ),
        const SizedBox(height: 30),
        Container(
          width: w*0.6,
          height: h*0.05,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              image: AssetImage(
                'lib/assets/bg-sky.png'
              ),
              fit: BoxFit.cover
            )
          ),
          child: Center(
            child: Text(
            "Ingresar",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
        )

        ),
        SizedBox(height: w*0.4),
        RichText(
          text: TextSpan(
            text: "Don't have an account?",
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 18
            ),
            children: [
              TextSpan(
            text: " Create",
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 18,
              fontWeight: FontWeight.bold
            )
            )
            ]
        ))
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
            borderRadius: BorderRadius.circular(30),
        ),
        //counterText: nombre.length.toString() + '/20',
        counterStyle: nombre.length >=20 ? TextStyle(color: Colors.red, fontSize: 14)
            : TextStyle(color: Colors.blue, fontSize: 14),
        hintText: 'Escriba su nombre',
        //La etiqueta para espeficar el nombre input
        //label: Text('Nombre'),
        //helperText: 'Unicamente el nombre',
        //para cambiar el color y la forma del borde al hacer focus
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            width: 1.0, 
            color: Colors.white
          )
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(width: 1.0, color: Colors.white)
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

}