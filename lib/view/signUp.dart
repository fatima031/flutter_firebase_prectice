import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:online/view/const.dart';
import 'package:online/view/home.dart';
import 'package:online/view/login.dart';
// import 'package:online/view/spalsh.dart';
// import 'package:online/view/login.dart';

class signUp_view extends StatelessWidget {
  const signUp_view({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    // sir ne kya tha ye wala code jo k run nhe horaa hay
    // ConstantView constant = ConstantView();
//---------------------

// neeche wala code jo chal raha hay wo is link sw copy kya hay https://firebase.flutter.dev/docs/auth/usage/

    signup() async {
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



//-------------------------//
// sir ne kya tha ye wala code jo k run nhe horaa hay
    // signup() async {
    //   try {
    //     if (!emailController.text.contains("@") ||
    //         !emailController.text.contains(".")) {
    //       constant.showSnackBar(context, "Email Is Incorrect!");
    //     } else if (passwordController.text.length > 6) {
    //       constant.showSnackBar(
    //           context, "Password Length Should Be Greater Than Or Equal To 6");
    //     } else {
    //       FirebaseAuth auth = FirebaseAuth.instance;
    //       UserCredential Credential = await auth.createUserWithEmailAndPassword(
    //           email: emailController.text, password: passwordController.text);

    //       Navigator.push(context,
    //           MaterialPageRoute(builder: (constant) => splash_screen()));
    //     }
    //   } catch (e) {
    //     print(e);
    //   }
      
    // }

    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'User Name',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Email',
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
                  hintText: 'Password',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => loginView()));
                    signup();
                  },
                  child: Text("Sign Up"))
            ],
          ),
        ),
      ),
    );
  }
}
