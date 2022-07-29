import 'package:flutter/material.dart';
import 'package:login_page/pages/forgot_password.dart';
import 'package:login_page/pages/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

const primary = Color(0x180A0A);
const white = Color(0xffffff);

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controllerEmail = new TextEditingController();
  final TextEditingController _controllerPassword = new TextEditingController();
  bool isShowPassword = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: getBody(),
      ),
    );
  }

  Widget getBody() {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Text(
            "LOGIN",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 5,
                width: 30,
                color: Color.fromRGBO(241, 0, 134, 1),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            cursorColor: primary,
            controller: _controllerEmail,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter Email",
              labelText: "Email",
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            obscureText: !isShowPassword,
            cursorColor: primary,
            controller: _controllerPassword,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Password",
                labelText: "Password",
                suffixIcon: FlatButton(
                  onPressed: () {
                    setState(() {
                      isShowPassword = !isShowPassword;
                    });
                  },
                  child: Icon(
                    isShowPassword ? Icons.visibility : Icons.visibility_off,
                    color: Color.fromRGBO(241, 0, 134, 1),
                  ),
                )),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: (() {
              forget();
            }),
            child: Align(
              child: Text("Forget Your Password?"),
              alignment: Alignment.bottomRight,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: FlatButton(
                color: Color.fromRGBO(241, 0, 134, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {
                  print("login action");
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Color.fromARGB(255, 253, 253, 253),
                      fontWeight: FontWeight.bold),
                ),
              ))
            ],
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: (() {
              get();
            }),
            child: Align(child: Text("Don't Have an account")),
          )
        ],
      ),
    ));
  }

  get() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
  }

  forget() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ForgetPage()));
  }
}
