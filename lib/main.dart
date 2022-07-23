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
      home: const RegisterForm(title: 'Registered Form'),
    );
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({required this.title, Key? key}) : super(key: key);
  final String title;
  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  bool isprint = false;
  late String _email;

  TextEditingController _editingControllerPassword = TextEditingController();
  TextEditingController _editingControllerRe_writePassword =
      TextEditingController();

  late FocusNode _focusNodeUserName;
  late FocusNode _focusNodeEmail;
  late FocusNode _focusNodePassword;
  late FocusNode _focusNodeRewritePassword;

  late bool _obscured;
  late bool _obscured1;

  void _valid() {
    if (globalKey.currentState!.validate()) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('correct validation')));
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('validation failled')));
    }
  }

  void _textObscured() {
    setState(() {
      _obscured = !_obscured;
    });
  }

  void _textObscured1() {
    setState(() {
      _obscured1 = !_obscured1;
    });
  }

  @override
  void initState() {
    _obscured = true;
    _obscured1 = true;

    _focusNodeUserName = FocusNode();
    _focusNodeEmail = FocusNode();
    _focusNodePassword = FocusNode();
    _focusNodeRewritePassword = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _focusNodeUserName.dispose();
    _focusNodeEmail.dispose();
    _focusNodePassword.dispose();
    _focusNodeRewritePassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0XFFF95A3B), Color(0XFFF96713)],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomCenter,
              stops: [0.0, 0.8],
              tileMode: TileMode.mirror),
        ),
        child: Center(
          child: Form(
            key: globalKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Spacer(
                  flex: 5,
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
                          flex: 25,
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
                          flex: 15,
                        )
                      ],
                    )),
                Expanded(
                    flex: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Spacer(
                          flex: 25,
                        ),
                        Expanded(
                          flex: 60,
                          child: Text(
                            'CREATE YOUR ACCOUNT',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                        Spacer(
                          flex: 15,
                        )
                      ],
                    )),
                Expanded(
                    flex: 10,
                    child: Row(
                      children: [
                        const Spacer(
                          flex: 20,
                        ),
                        Expanded(
                          flex: 60,
                          child: TextFormField(
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty ||
                                    !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                                  return 'Please Enter Full User Name';
                                }
                                return null;
                              },
                              focusNode: _focusNodeUserName,
                              keyboardType: TextInputType.name,
                              textCapitalization: TextCapitalization.sentences,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                              ),
                              textDirection: TextDirection.ltr,
                              decoration: const InputDecoration(
                                filled: true,
                                errorStyle: TextStyle(
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 3, color: Colors.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                labelText: 'User Name',
                                labelStyle: TextStyle(color: Colors.black),
                                hintText: 'Enter User Name',
                                hintStyle: TextStyle(color: Colors.black87),
                                // suffixIcon: Icon(Icons.close),
                                prefixIcon: Icon(
                                  Icons.account_circle,
                                  size: 20,
                                  color: Colors.black,
                                ),
                              )),
                        ),
                        const Spacer(
                          flex: 20,
                        )
                      ],
                    )),
                const Spacer(
                  flex: 1,
                ),
                Expanded(
                    flex: 10,
                    child: Row(
                      children: [
                        const Spacer(
                          flex: 20,
                        ),
                        Expanded(
                          flex: 60,
                          child: TextFormField(
                            maxLength: 45,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please Enter Email';
                              }
                              if (!RegExp(
                                      '^[a-zA-Z0-9.a-zA-Z0-9.!#%&*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+')
                                  .hasMatch(value)) {
                                return 'Please Enter valid Email';
                              }
                              return null;
                            },
                            onSaved: (String? email) {
                              _email = email!;
                            },
                            focusNode: _focusNodeEmail,
                            keyboardType: TextInputType.emailAddress,
                            textCapitalization: TextCapitalization.sentences,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                            ),
                            textDirection: TextDirection.ltr,
                            decoration: const InputDecoration(
                              filled: true,
                              errorStyle: TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic),
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 3, color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              labelText: 'User Email',
                              labelStyle: TextStyle(color: Colors.black),
                              hintText: 'Enter User Email',
                              hintStyle: TextStyle(color: Colors.black87),
                              // suffixIcon: Icon(Icons.close),
                              prefixIcon: Icon(
                                Icons.email_sharp,
                                size: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const Spacer(
                          flex: 20,
                        )
                      ],
                    )),
                const Spacer(
                  flex: 1,
                ),
                Expanded(
                    flex: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(
                          flex: 20,
                        ),
                        Expanded(
                          flex: 60,
                          child: TextFormField(
                            obscureText: _obscured,
                            validator: (value) {
                              int counterAlpha = 0;
                              int counterNumber = 0;
                              int counterSymbol = 0;
                              if (value!.length >= 8) {
                                value.runes.forEach((int element) {
                                  String char = String.fromCharCode(element);
                                  if (char.contains(RegExp(r'[A-Z]')) ||
                                      char.contains(RegExp(r'[a-z]'))) {
                                    counterAlpha++;
                                  } else if (char.contains(RegExp(r'[0-9]'))) {
                                    counterNumber++;
                                  } else if (char.contains(
                                      RegExp(r'[@#!%^&*()=\|/?><-_$]'))) {
                                    counterSymbol++;
                                  }
                                });
                                if (counterAlpha >= 2 &&
                                    counterNumber >= 2 &&
                                    counterSymbol >= 2) {
                                  return null;
                                } else {
                                  return 'Please enter stronge password';
                                }
                              }
                              return 'Password length should be greater or equal 8';
                            },
                            controller: _editingControllerPassword,
                            focusNode: _focusNodePassword,
                            keyboardType: TextInputType.multiline,
                            textCapitalization: TextCapitalization.sentences,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                            ),
                            textDirection: TextDirection.ltr,
                            decoration: InputDecoration(
                              filled: true,
                              errorStyle: const TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic),
                              border: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 3, color: Colors.black),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              labelText: 'User Password',
                              labelStyle: const TextStyle(color: Colors.black),
                              hintText: 'Enter User Password',
                              suffixIcon: GestureDetector(
                                onTap: _textObscured,
                                child: Icon(
                                  _obscured
                                      ? Icons.visibility_rounded
                                      : Icons.visibility_off_rounded,
                                  color: Colors.black,
                                ),
                              ),
                              hintStyle: const TextStyle(color: Colors.black87),
                              prefixIcon: const Icon(
                                Icons.lock_outlined,
                                size: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const Spacer(
                          flex: 20,
                        )
                      ],
                    )),
                const Spacer(
                  flex: 1,
                ),
                Expanded(
                    flex: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(
                          flex: 20,
                        ),
                        Expanded(
                            flex: 60,
                            child: TextFormField(
                              obscureText: _obscured1,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please Enter password Again';
                                }
                                if (_editingControllerPassword.text !=
                                    _editingControllerRe_writePassword.text) {
                                  return 'Password Do Not Match';
                                }
                                return null;
                              },
                              controller: _editingControllerRe_writePassword,
                              focusNode: _focusNodeRewritePassword,
                              textCapitalization: TextCapitalization.sentences,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
                              ),
                              textDirection: TextDirection.ltr,
                              decoration: InputDecoration(
                                filled: true,
                                errorStyle: const TextStyle(
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic),
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 3, color: Colors.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                labelText: 'Confirm Password',
                                labelStyle:
                                    const TextStyle(color: Colors.black),
                                hintText: 'Enter User confirm password',
                                hintStyle: const TextStyle(color: Colors.black),
                                suffixIcon: GestureDetector(
                                  onTap: _textObscured1,
                                  child: Icon(
                                    _obscured1
                                        ? Icons.visibility_rounded
                                        : Icons.visibility_off_rounded,
                                    color: Colors.black,
                                  ),
                                ),
                                prefixIcon: const Icon(
                                  Icons.password_sharp,
                                  size: 20,
                                  color: Colors.black,
                                ),
                              ),
                            )),
                        const Spacer(
                          flex: 20,
                        )
                      ],
                    )),
                Expanded(
                    flex: 5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(
                          flex: 35,
                        ),
                        Expanded(
                            flex: 40,
                            child: ListTile(
                              leading: Checkbox(
                                  activeColor: Colors.blue,
                                  checkColor: Colors.black,
                                  focusColor: Colors.deepPurple,
                                  hoverColor: Colors.yellow,
                                  value: isprint,
                                  onChanged: (value) {
                                    setState(() {
                                      isprint = !isprint;
                                    });
                                  }),
                              title: const Text(
                                'Agree & continue',
                                style: TextStyle(color: Colors.black),
                              ),
                            )),
                        const Spacer(
                          flex: 25,
                        )
                      ],
                    )),
                Expanded(
                    flex: 13,
                    child: Row(
                      children: [
                        const Spacer(
                          flex: 20,
                        ),
                        // button submitt
                        Expanded(
                          flex: 25,
                          child: Container(
                            // height: 50,
                            // width: 5,
                            decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40))),
                            child: OutlinedButton(
                                onPressed: () {},
                                child: const Text('Cancel',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15))),
                          ),
                        ),
                        const Spacer(
                          flex: 10,
                        ),
                        Expanded(
                          flex: 25,
                          child: Container(
                            // height: 50,
                            // width: 5,
                            decoration: const BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40))),
                            child: OutlinedButton(
                                onPressed: () {
                                  _valid();
                                  // _focusNodeUserName.requestFocus();
                                },
                                child: const Text('Registered',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 13))),
                          ),
                        ),
                        const Spacer(
                          flex: 20,
                        )
                      ],
                    )),
                Expanded(
                    flex: 7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(
                          flex: 30,
                        ),
                        Expanded(
                            flex: 60,
                            child: RichText(
                                text: const TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text: 'Already Registered?',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15)),
                              TextSpan(
                                  text: 'Sign in',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15))
                            ]))),
                        const Spacer(
                          flex: 10,
                        )
                      ],
                    )),
                const Spacer(
                  flex: 5,
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
