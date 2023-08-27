import 'package:flutter/material.dart';

import 'bottom_menu.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SizedBox(
          height: height,
          child: Stack(
            children: [
              Container(
                height: height / 2,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 60),
                  child: Column(
                    children: [
                      SizedBox(
                          height: 90, child: Image.asset('assets/logopre.png')),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'MIllions of songs, free on Rapid',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Roboto',
                            fontStyle: FontStyle.normal),
                      )
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: SizedBox(
                  height: 800,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32, vertical: 30),
                        margin: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(32)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text(
                              'Login Account',
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 22,
                            ),
                            SizedBox(
                              height: 50,
                              child: Input(
                                  hint: 'Email or Username',
                                  icon: Icons.email_outlined),
                            ),
                            const SizedBox(height: 16),
                            SizedBox(
                              height: 50,
                              child: Input(
                                  hint: 'Password',
                                  icon: Icons.visibility_outlined),
                            ),
                            SwitchListTile.adaptive(
                              activeColor: Colors.green,
                              value: rememberMe,
                              onChanged: ((bool value) {
                                setState(() {
                                  rememberMe = value;
                                });
                              }),
                              contentPadding: const EdgeInsets.all(0),
                              title: Text('Remember me',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black)),
                            ),
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(31)),
                              height: 40,
                              color: Colors.green,
                              onPressed: () {

                                final snackBar = SnackBar(
                                  duration: Duration(seconds: 1),
                                  backgroundColor: Colors.black,
                                  content: const Text('Logged in'),
                                  action: SnackBarAction(

                                    onPressed: () {
                                      // Some code to undo the change.
                                    }, label: '',
                                  ),
                                );


                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Bottom()));
                                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              },
                              child: const Text(
                                'LOG IN',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Divider(
                                    thickness: 1,
                                    height: 1,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Text('or',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700)),
                                const SizedBox(
                                  width: 12,
                                ),
                                Expanded(
                                  child: Divider(
                                    thickness: 1,
                                    height: 1,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    height: 30,
                                    child: Image.asset('assets/Google.png')),
                                const SizedBox(
                                  width: 35,
                                ),
                                SizedBox(
                                    height: 30,
                                    child: Image.asset('assets/facebook.png')),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              'Forget password?',
                              // style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: ColorConstants.starterWhite),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Don’t have an account?',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Sign up now',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 80,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Input extends StatelessWidget {
  Input({
    Key? key,
    required this.hint,
    required this.icon,
  }) : super(key: key);

  String hint;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: hint,
          labelStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26),
            // borderSide: BorderSide(color: ColorConstants.starterWhite)
          ),
          focusedBorder: OutlineInputBorder(
            // borderSide: BorderSide(color: ColorConstants.primaryColor ),
            borderRadius: const BorderRadius.all(Radius.circular(26)),
          ),
          suffixIcon: Icon(icon)),
    );
  }
}
