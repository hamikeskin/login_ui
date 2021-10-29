import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class LoginScreen extends StatefulWidget {
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Image.asset("lib/images/harmony.png"),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Hesabın yok mu?",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "Kayıt ol",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ]),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 40, right: 40, top: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Colors.blue[50],
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(20),
                              child: Icon(
                                Icons.accessibility,
                                color: Colors.blue,
                              ),
                            ),
                            Text(
                              " E-mail",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Colors.blue[50],
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(20),
                              child: Icon(
                                Icons.lock,
                                color: Colors.blue,
                              ),
                            ),
                            Text(
                              " Şifre",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Şifreni mi unuttun?",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                    ),
                  ),
                ]),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      "Giriş yap",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 5),
                    child: SignInButton(
                      Buttons.AppleDark,
                      text: "Giriş yap",
                      onPressed: () {},
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: SignInButton(
                      Buttons.Google,
                      text: "Giriş yap",
                      onPressed: () {},
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, right: 10),
                    child: SignInButton(
                      Buttons.Facebook,
                      text: "Giriş yap",
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
