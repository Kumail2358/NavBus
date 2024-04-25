import 'package:flutter/material.dart';
import 'package:iqra_navbus_app/beg.dart';
import 'package:iqra_navbus_app/main.dart';
import 'login.dart'; // Import the LoginPage
import 'userfun.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'reusable_widgets/reusable_widgets.dart';

Future<void>signup() async{
  WidgetsFlutterBinding.ensureInitialized();
  await UserService().getUser();
  runApp( MyApp());
}

class SignUpPage extends StatelessWidget {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
            color: Color.fromARGB(255, 72, 80, 155),
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: false,
            leading: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: SizedBox(
                width: 40.0,
                height: 40.0,
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Color.fromARGB(255, 255, 253, 253),
                  iconSize: 30.0,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/bar.png'),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Sign Up',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              reusableTextField("Enter UserName", Icons.person_outline, false,
                  _userNameTextController),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Enter Email Id", Icons.person_outline, false,
                  _emailTextController),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Enter Password", Icons.lock_outlined, true,
                  _passwordTextController),
              const SizedBox(
                height: 20,
              ),
              firebaseUIButton(context, "Sign Up", () {
                FirebaseAuth.instance
                    .createUserWithEmailAndPassword(
                        email: _emailTextController.text,
                        password: _passwordTextController.text)
                    .then((value) {
                  print("Created New Account");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => begPage()));
                }).onError((error, stackTrace) {
                  print("Error ${error.toString()}");
                });
              }),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Handle "Log In" button press
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              loginPage(), // Navigate to LoginPage
                        ),
                      );
                    },
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                  height: MediaQuery.of(context)
                      .viewInsets
                      .bottom), // Adjust spacing for keyboard
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpFormField extends StatelessWidget {
  final String label;
  final String hintText;

  const SignUpFormField({
    Key? key,
    required this.label,
    required this.hintText,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          label, // Name heading
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[200], // Set the background color
            borderRadius: BorderRadius.circular(20.0), // Set border radius
          ),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(15.0),
              hintText: hintText, // Show hint text when input is not focused
              border: InputBorder.none, // Remove the default border
            ),
          ),
        ),
      ],
    );
  }
}