import 'package:flutter/material.dart';
import 'package:loginui/components/my_button.dart';
import 'package:loginui/components/my_textfield.dart';
import 'package:loginui/pages/register_now_button.dart';
import 'package:http/http.dart';
import 'forgot_password.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controller
  final usernameController = TextEditingController();
  final passwordControl = TextEditingController();
  
  get uri => null;

  

  //sign user in method
  void signUserIn() {
    try {
    Response response = post(uri.parse(
      'https://test-atre-server-v2.up.railway.app/'
    ),
    body: {
      'email'  
      'Password'

    }
    ) as Response;
  } catch (e) {
  print(e.toString()); 
  }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50.0),

              //logo
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(height: 40.0),

              //welcome back you've been missed

              Text('Welcome back you\'ve been missed',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16.0,
                  )),

              const SizedBox(height: 25.0),

              //username textfield
              MyTextFields(

                controller: usernameController,
                hintText: 'username',
                obscureText: false,
              ),

              const SizedBox(height: 10.0),

              //password textfield============
              MyTextFields(
                controller: passwordControl,
                hintText: 'password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              //forgot password=====================

              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ForgotPasswordPage();
                  }));
                },
                child:const Text(
                  'Forget Password?',
                  style: TextStyle(color: Colors.blue),
                ),
              ),

              const SizedBox(height: 10.0),

              //signin button
              MyButton(onTap: signUserIn),

              const SizedBox(height: 10.0),

              //or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  const Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text('Or continue with'),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.8,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ]),
              ),

              const SizedBox(height: 10.0),

              //google + apple sign in button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //google button
                  Image.asset(
                    'assets/googlelogo.png',
                    height: 60,
                  ),
                  const SizedBox(width: 25.0),

                  //apple button
                  Image.asset(
                    'assets/applelogo.png',
                    height: 60,
                  )
                ],
              ),

              const SizedBox(height: 35.0),

              //not a member? request now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                  const SizedBox(
                    width: 4.0,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const RegisterNow();
                        }));
                      },
                      child: const Text('Register now🎗'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
