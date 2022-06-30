import 'package:flutter/material.dart';
import 'package:venotify/screens/login_screen.dart';
import 'signup_screen.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('images/logo.png'),
              ),
              SizedBox(
                height: 20,
              ),
              Text('VENOTIFY'),
              SizedBox(
                height: 75,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  maximumSize: Size(362, 57),
                  primary: Colors.grey,
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.login),
                    SizedBox(
                      width: 10,
                    ),
                    Text('LOGIN'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  maximumSize: Size(362, 57),
                  primary: Colors.grey,
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUp();
                      },
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person),
                    SizedBox(
                      width: 10,
                    ),
                    Text('SIGNUP'),
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
