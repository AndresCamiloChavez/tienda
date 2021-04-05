import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiendita/pages/SigninPage.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(228, 228, 228, 1),
      backgroundColor: Color.fromRGBO(138, 121, 216, 0.6),
      
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingIn(),
      ),
    );
  }
}

class SingIn extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  final size = MediaQuery.of(context).size;
    return SafeArea(
       child: SingleChildScrollView(
         physics: BouncingScrollPhysics(),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
               Container(
                 height: size.height *0.3,
                 width: size.width * 0.7,
                  child: SvgPicture.asset('assets/shop1.svg', alignment: Alignment.topCenter,),
               ),
               _inputs(context)
           ],
         ),
       ),
    );
  }

  Widget _inputs(BuildContext context) {
  final size = MediaQuery.of(context).size;

    return  Container(
        // color: Colors.white,
        width: size.width * .85,
        height: size.height * .85,

        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(5),
                child: Text(
                  'Bienvenido',
                   style: GoogleFonts.viga(fontSize: 35, color: Colors.white)),
            ),
            Container(
              margin: EdgeInsets.all(8),
                child: RichText(
                  textAlign: TextAlign.center ,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Tu app de '
                      ),
                      TextSpan(
                        style:  GoogleFonts.viga(fontSize: 17, color: Colors.white),
                        text: 'confiaza'
                      ),
                       TextSpan(
                         style: TextStyle(),
                        text: ', compras seguras disponible en Android y IOS'
                      ),
                    ]
                  )
                )
            ),
            SizedBox(
              height: size.height * .05,
            ),
            Container(
              margin: EdgeInsets.all(5),
              child: Theme(
                data: ThemeData(
                  primaryColor: Colors.white30,
                  
                ),
                child: TextField(
                  style: TextStyle(color: Colors.white60),
                  decoration: InputDecoration(
                  
                   hintText: 'Usuario',
                   hintStyle: TextStyle(color: Colors.white24)
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              child: Theme(
                data: ThemeData(
                  primaryColor: Colors.white30
                ),
                child: TextField(
                  style: TextStyle(color: Colors.white60),

                  decoration: InputDecoration(
                   hintText: 'Contraseña',
                   hintStyle: TextStyle(color: Colors.white24,)
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              width: size.width * 0.8,
              child: RaisedButton(
                color: Colors.white,
                child: Text('Ingresar', style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),),
                shape: StadiumBorder(),
                onPressed:(){},
                splashColor: Color.fromRGBO(123, 124, 150, 0.4)
              ),
            ),

            Container(
              width: double.infinity,
              // height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('No tienes cuenta?', style: TextStyle(color: Colors.white),),
                  TextButton(
                    
                    onPressed: () => Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context)=> SignInPage())),
                    child: Text('Registrate!', style: TextStyle(color: Colors.deepPurple[200]),))
                ],
              ),
            )
          ],
        ),
      );
    
  }
}

