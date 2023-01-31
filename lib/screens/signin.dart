import 'package:flutter/material.dart';

import 'signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isObscure = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(_isObscure);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Trat Technical College"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
                image: AssetImage('assets/images/login.png'),
                height: 200,
                width: 300),
            Container(
              child: Text(
                "วิทยาลัยเทคนิคตราด",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 80,
              width: double.maxFinite,
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  prefixIcon: Icon(Icons.person),
                  labelText: 'Username',
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Container(
              height: 80,
              width: double.maxFinite,
              padding: EdgeInsets.all(8.0),
              child: TextField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                        print(_isObscure);
                      });
                    },
                    icon: Icon(
                      _isObscure == false
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              width: double.maxFinite,
              padding: EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Login"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text("สร้างบัญชีเข้าสู่ระบบ?"),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign-In",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}