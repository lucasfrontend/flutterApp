import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  
  String nombre = '';
  bool _ojo = true;
  bool isChecked = true;

  TextEditingController _inputDateController =   TextEditingController();

  @override
  Widget build(BuildContext context) {
    List images = [
      'google.png',
      'twitter.jpg'
    ];

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
                'lib/assets/bg-1.jpg'
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
                child: _emailInput(),
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
                child: _passwordInput(),
              ),
              const SizedBox(height: 20),
              _checkBox()
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
            text: "Ingresa con tus cuentas",
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 16
            )        
          )
        ),
        Wrap(
          children: List<Widget>.generate(
            2,
            (index){
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey[400],
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(
                      'lib/assets/img/'+images[index]
                    ),
                
                  ),
                ),
              );
            }
          ),
        )
      ],
      )
    );

  }
  
  Widget _emailInput() {
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
        hintText: 'Tu mail',
        prefixIcon: Icon(Icons.email, color: Colors.blue),
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
    );
 }

  Widget _passwordInput() {
    return TextField(
      //Control de las mayusculas
      textCapitalization: TextCapitalization.sentences,
      obscureText: _ojo,
      //Estilos
      decoration: InputDecoration(
          //borde
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30)
          ),
          //counterText: nombre.length.toString() + '/20',
          counterStyle: nombre.length >=20 ? TextStyle(color: Colors.red, fontSize: 14) : TextStyle(color: Colors.blue, fontSize: 14),
          hintText: 'Contrasenia',
          prefixIcon: Icon(Icons.password_sharp, color: Colors.blue),
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
          //La etiqueta para espeficar el nombre input
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

/*
class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    //ancho y alto de pantalla
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      //alpedo
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h*0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'lib/assets/bg-1.jpg'
                ),
                fit: BoxFit.cover
              )
            ),
            child: Column(
              children: [
                SizedBox(height: h*0.1),
                CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.grey[500],
                  backgroundImage: AssetImage(
                    'lib/assets/funjump.jpg'
                  ),
                ),
              ],
            ),
          ),

        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          width: w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                child: _emailInput(),
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
                child: _emailInput(),
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
  Widget _emailInput() {
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

     } ,
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
}

*/