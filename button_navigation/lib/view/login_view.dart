import 'package:button_navigation/shared_pref/shared_pref.dart';
import 'package:flutter/material.dart';

import '../model/user.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final gap = const SizedBox(height: 10);
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  User? users;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            gap,
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            gap,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  SharedPref sharedPref = SharedPref();
                  var user = User(
                    username: _usernameController.text.trim(),
                    password: _passwordController.text.trim(),
                  );
                  sharedPref.addUser(user);

                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('User added')));
                },
                child: const Text('Add'),
              ),
            ),
            gap,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  SharedPref sharedPref = SharedPref();
                  users = await sharedPref.getUser();
                  setState(() {});
                },
                child: const Text('Get'),
              ),
            ),
            Text('username: ${users!.username}, password: ${users!.password} '),
          ],
        ),
      ),
    );
  }
}
