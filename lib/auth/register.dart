import 'package:flutter/material.dart';
import 'auth_service.dart';
import 'package:taka_app/mainScreen.dart';
import 'login.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                  "Register and Login",
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
            SizedBox(height: 20),
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
                child: Text("Register"),
                      onPressed:() async{
                  await AuthServices.signUp(
                    emailController.text, passwordController.text
                  );
                      }
              ),
            ),
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
