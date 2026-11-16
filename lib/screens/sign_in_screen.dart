import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {

  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _errorText="";
  bool _isSignedIn=false;
  bool _obscurePassword=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign In'),) ,
      body: Center(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //todo 5 Pengguna
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Nama Pengguna',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20,),
              //todo 6 sandi
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: "Kata Sandi",
                  border: OutlineInputBorder(),
                  errorText: _errorText.isNotEmpty ? _errorText: null,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                          _obscurePassword= !_obscurePassword;
                      });                    
                    }, 
                    icon: Icon(_obscurePassword ? Icons.visibility_off : Icons.visibility))
                ),
                obscureText: _obscurePassword,

              ),
              //todo 7 Sign In
              const SizedBox(height: 20,),
              ElevatedButton(
              onPressed: () { } ,
               child: const Text('Sign In')),
              //todo 8 Sign up
              const SizedBox(height: 20,),
              RichText(
                  text: TextSpan(
                    text: 'Belum punya akun? ',
                    style: const TextStyle(fontSize: 16, color: Colors.deepPurple),
                    children: [
                      TextSpan(
                        text: 'Daftar di sini.',
                        style: const TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}