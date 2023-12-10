import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:online/view/home.dart';
// import 'package:online/view/signUp.dart';

class loginView extends StatelessWidget {
  const loginView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    login() async {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: emailController.text, password: passwordController.text);
                 Navigator.push(context,
                        MaterialPageRoute(builder: (context) => home_view()));
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }
    }

    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: ' Enter User Name',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter EmailAddress',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Password',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    login();
                  },
                  child: Text("Login")),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => home_view()));
                  },
                  child: Text("Don't have an account? Sign up"))
            ],
          ),
        ),
      ),
    );
  }
}
