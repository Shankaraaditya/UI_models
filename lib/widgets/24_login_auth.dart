import 'package:flutter/material.dart';
import 'package:flutter_app_30_1/Functions/authFunctions.dart';

class Day24Authentication extends StatefulWidget {
 const  Day24Authentication({Key? key}) : super(key: key);

  @override
  State<Day24Authentication> createState() => _Day24AuthenticationState();
}

class _Day24AuthenticationState extends State<Day24Authentication> {
  bool isLogin = false;
  final _formkey = GlobalKey<FormState>();
  
    // to validate the form // agar user ne username pass enter he nahi kiya to ,
    // login hona he nahi chahiye.
    String username = '';
    String email  = '';
    String password = '';
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Authentication"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Form(
        key: _formkey,
        child: Container(
          margin:  EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !isLogin?
                   TextFormField (
                      key:  const ValueKey('username'),

                      validator: (valueUsername){
                        if(valueUsername.toString().length<3){
                          return 'Username is invalid';
                        }else{
                          return null;
                        }

                      },

                      onSaved: (valueUsername){
                        setState(() {
                          username = valueUsername! ;
                        });    
                      },

                      decoration:  const InputDecoration(
                        hintText: "Enter Username",
                      ),
                    ): Container(),
                 
              // agar islogin false hai to username show hoga
              // nahi to simple empty container.

              TextFormField(
                key: const ValueKey('email'),
                validator: (valueEmail){
                        if( !(valueEmail.toString().contains('@')) ){
                          return 'Invalid Email!!';
                        }else{
                          return null;
                        }

                      },

                      onSaved: (valueEmail){
                        setState(() {
                          email = valueEmail! ;
                        });    
                      },
                decoration: const InputDecoration(
                  hintText: "Enter Email",
                ),
              ),
              TextFormField(
                key: const ValueKey('password'),
                obscureText: true,
                validator: (valuePass){
                        if( valuePass.toString().length<6 ){
                          return 'Password is too small!!';
                        }else{
                          return null;
                        }

                      },

                      onSaved: (valueP){
                        setState(() {
                          password = valueP! ;
                        });    
                      },
                decoration: const InputDecoration(
                  hintText: "Enter Password",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  // decoration: BoxDecoration(
                  //   color: Colors.deepPurple,
                  // ),
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        
                        if (_formkey.currentState!.validate()) {
                          _formkey.currentState!.save();
                          isLogin? signin(email, password): signup(email, password);
                        } 
                        // if the form is validate then and then save the form                        

                        // signup(email, password)
                      },
                      child: isLogin? Text("Login") : Text("Signup"))),
                      
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      // isLogin = !isLogin;
                      isLogin = !isLogin;
                    });
                  },
                  child: isLogin
                      ? const Text("Dont have an account?Signup")
                      : const Text('Already Signed Up? Login ')),
              // islogin true hoga to dnt have an account signup
              // false hoga to alreday sign up? login.
            ],
          ),
        ),
      ),
    );
  }
}
