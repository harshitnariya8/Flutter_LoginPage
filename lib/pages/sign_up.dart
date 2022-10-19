import 'package:flutter/material.dart';
import 'package:login_page/main.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _controllerEmail = new TextEditingController();
  final TextEditingController _controllerPassword = new TextEditingController();
  final TextEditingController _controllerFirstName =
      new TextEditingController();
  final TextEditingController _controllerConfirmPassword =
      new TextEditingController();
  final TextEditingController _controllerLastName = new TextEditingController();
  bool isShowPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
                padding: const EdgeInsets.only(left: 22, top: 22),
                child: Icon(Icons.arrow_back))),
        SizedBox(
          height: 34,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "SIGNUP",
                style: TextStyle(fontSize:18, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 5,
                width: 30,
                color: Color.fromRGBO(243, 0, 134, 1),
              ),
              SizedBox(
                height: 28,
              ),
              Row(
                children: [
                  Container(
                    width: 145,
                    child: TextField(
                      controller: _controllerFirstName,
                      decoration: InputDecoration(hintText: "_First Name"),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 145,
                    child: TextField(
                      controller: _controllerLastName,
                      decoration: InputDecoration(hintText: "_Last Name"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height:28,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18),
                child: TextField(
                  cursorColor: primary,
                  controller: _controllerEmail,
                  decoration: InputDecoration(
                    hintText: "Email",
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 28),
                child: TextField(
                    obscureText: !isShowPassword,
                    cursorColor: primary,
                    controller: _controllerPassword,
                    decoration: InputDecoration(
                        hintText: "Password",
                        suffixIcon: FlatButton(
                          onPressed: () {
                            setState(() {
                              isShowPassword = !isShowPassword;
                            });
                          },
                          child: Icon(isShowPassword
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ))),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: TextField(
                  obscureText: true,
                  cursorColor: primary,
                  controller: _controllerConfirmPassword,
                  decoration: InputDecoration(
                    hintText: "Confirm Password",
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Row(
                  children: [
                    Expanded(
                        child: FlatButton(
                      color: Color.fromRGBO(241, 0, 134, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () {
                        print("Sign up");
                      },
                      child: Text(
                        "Sign Up",
                        style:
                            TextStyle(color: Color.fromRGBO(245, 255, 255, 1)),
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: (() {
                  login();
                }),
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Align(
                      child: Text(
                    "I Already Have An Account",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }

  login() {
    Navigator.pop(context);
  }
}
