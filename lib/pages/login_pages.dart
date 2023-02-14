import 'package:flutter/material.dart';
import 'package:loginui/components/my_button.dart';
import 'package:loginui/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controller
  final usernameController = TextEditingController();
  final passwordControl = TextEditingController();

  //sign user in method
  void signUserIn(){}

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

          Text(
            'Welcome back you\'ve been missed',
            style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 16.0,
               )
            ),

            const SizedBox(height: 25.0),
        
          //username textfield
             MyTextFields(
              controller: usernameController,
               hintText: 'username', 
               obscureText: false,
               ),
           
         
         const SizedBox(height: 10.0),
        
          //password textfield
              MyTextFields(
                controller: passwordControl,
               hintText: 'password', 
               obscureText: true, 
              ),
            

            const SizedBox(height: 10),

          //forgot password
          
        Text(
          'Forget Password?',
          style: TextStyle(color: Colors.grey.shade600),
            ),
              


          const SizedBox(height: 10.0),

          //signin button
              MyButton(
                onTap: signUserIn
                ),

            const SizedBox(height: 10.0),
        
          //or continue with
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
             child: Row(
              children: [
                Expanded(
                  child: 
                  Divider(
                   thickness: 0.5,
                   color: Colors.grey.shade400,
                  ),
               ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text('Or continue with'),
              ),
              Expanded(
                  child: 
                  Divider(
                   thickness: 0.5,
                   color: Colors.grey.shade400,
                  ),
              ),
            ]
          ),
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
                'Not a memer?',
                style: TextStyle(color: Colors.grey.shade700),
                ),
              const SizedBox(width: 4.0,),
              Text(
                'Register now',
                style: TextStyle(color: Colors.blue,
                fontWeight:FontWeight.bold ),
                )
               ],
              )
            ],  
          ),
        ),   
      ),
   ); 
  }
}