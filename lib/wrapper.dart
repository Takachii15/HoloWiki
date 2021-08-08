import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'auth/register.dart';
import 'auth/login.dart';
import 'mainScreen.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    FirebaseUser firebaseUser = Provider.of<FirebaseUser>(context);
    return (firebaseUser == null ) ? RegisterScreen(): MainApp(firebaseUser);
  }
}
