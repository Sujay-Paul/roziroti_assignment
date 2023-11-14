import 'package:flutter/material.dart';
import 'package:roziroti_assignment/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Create your Account',
              style: TextStyle(fontSize: 50),
              maxLines: 2,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(screeHeight * 0.02),
                          prefixIcon: const Icon(Icons.email),
                          prefixIconColor: Colors.grey[500],
                          label: const Text('Email'),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Colors.grey[100],
                        ),
                      ),
                      SizedBox(height: screeHeight * 0.02),
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(screeHeight * 0.02),
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: const Icon(Icons.visibility_off),
                          prefixIconColor: Colors.grey[500],
                          suffixIconColor: Colors.grey[500],
                          label: const Text('Password'),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Colors.grey[100],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (newValue) {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    const Text('Remember me')
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => const HomeScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: screeHeight * 0.02),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Sign Up'),
                ),
              ],
            ),
            const Row(
              children: [],
            ),
            const Column(
              children: [Text('or continue with')],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account ?'),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign in',
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
