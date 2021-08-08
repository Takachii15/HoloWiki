import 'package:flutter/material.dart';
import 'auth_service.dart';
import 'package:taka_app/mainScreen.dart';
import 'register.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container( 
        padding: EdgeInsets.all(20),        
        child: ListView(
          children: <Widget>[
            Container(
              child: Image.asset(
                "assets/img/Hololive_Logo.png",
                height: 100,
                width: 100,
                ),
            ),
            Container(
            margin: EdgeInsets.only(top: 10),
              child: Center(
                child: Text(
                  "Hololive Fan Group",
                  style: TextStyle(
                    fontSize: 15,
                  )
                )
              )
            ),
            SizedBox(height: 30),
            Container(
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 25)
                )
              )
            ),
            SizedBox(height: 50),
            Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(  
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "Email"
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(  
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "Password"

                ),
              ),
            ),
            // FlatButton(
            //   onPressed:(){

            //   },
            //   textColor: Colors.blue,
            //   child: Text("Forgot Password"),
            // ),
            SizedBox(height: 30),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(  
                // textColor: Colors.white,
                style: raisedButtonStyle,
                child: Text("Login"),
                      onPressed:() async{
                  await AuthServices.signIn(
                    emailController.text, passwordController.text
                  );
                }
              ),
            ),
            SizedBox(height:30),
            Container(
              child: Center(
                child: Text("doesnt have account? ")
              ),
            ),
            Container(
              child: Center(
                child: TextButton(
                  child: Text(
                    "Register"
                  ),
                      onPressed:(){
                        Route route = MaterialPageRoute(builder: (context)=> RegisterScreen());
                        Navigator.push(context, route);
                      }
                )
              )
            )
          ],
        ),
      ),
    );
  }
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.grey[300],
  primary: Colors.blue[300],
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(30)),
  ),
);
