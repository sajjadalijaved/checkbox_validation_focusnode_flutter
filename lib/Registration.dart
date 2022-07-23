import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Registered Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Signup(title: 'Registered Form'),
    );
  }
}

class Signup extends StatefulWidget {
  const Signup({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0XFFF95A3B), Color(0XFFF96713)],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomCenter,
              stops: [0.0, 0.8],
              tileMode: TileMode.mirror),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Spacer(
                flex: 10,
              ),
              Expanded(
                  flex: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Spacer(
                        flex: 25,
                      ),
                      Expanded(
                        flex: 20,
                        child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/sajjad.png')),
                      ),
                      Spacer(
                        flex: 55,
                      )
                    ],
                  )),
              Expanded(
                  flex: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Spacer(
                        flex: 25,
                      ),
                      Expanded(
                        flex: 60,
                        child: Text(
                          'YOUR APP NAME',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                      Spacer(
                        flex: 15,
                      )
                    ],
                  )),
              Expanded(
                  flex: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Spacer(
                        flex: 28,
                      ),
                      Expanded(
                        flex: 60,
                        child: Text(
                          'Company Slogon',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                      Spacer(
                        flex: 12,
                      )
                    ],
                  )),
              const Spacer(
                flex: 5,
              ),
              Expanded(
                  flex: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(
                        flex: 15,
                      ),
                      Expanded(
                        flex: 70,
                        child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.facebook_rounded,
                                size: 60,
                                color: Colors.black,
                              ),
                              Text(
                                'Sign in with facebook',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 15,
                      )
                    ],
                  )),
              const Spacer(
                flex: 5,
              ),
              Expanded(
                  flex: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(
                        flex: 15,
                      ),
                      Expanded(
                        flex: 70,
                        child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.g_mobiledata_outlined,
                                size: 70,
                              ),
                              // Image(image: AssetImage('assets/images.png')),
                              Text(
                                'Sign in with google',
                                style:
                                    TextStyle(color: Colors.pink, fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 15,
                      )
                    ],
                  )),
              const Spacer(
                flex: 5,
              ),
              Expanded(
                  flex: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(
                        flex: 15,
                      ),
                      Expanded(
                        flex: 70,
                        child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Sign up',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 15,
                      )
                    ],
                  )),
              Expanded(
                  flex: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(
                        flex: 30,
                      ),
                      Expanded(
                          flex: 50,
                          child: RichText(
                              text: const TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: 'Already Registered?',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
                            TextSpan(
                                text: 'Sign in',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20))
                          ]))),
                      const Spacer(
                        flex: 20,
                      )
                    ],
                  )),
              const Spacer(
                flex: 15,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
