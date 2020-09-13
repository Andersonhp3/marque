import 'package:flutter/material.dart';
import 'package:marque/blocs/login_bloc.dart';
import 'package:marque/widgets/input_field.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _loginBlock  = LoginBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[250],
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Icon(
                    Icons.alarm_add,
                    color: Colors.deepPurple,
                    size: 130,
                  ),
                  InputField(
                    icon: Icons.person_outline,
                    hint: "Usuario",
                    obscure: false,
                    stream: _loginBlock.outEmail,
                    onChanged: _loginBlock.changeEmail,
                  ),
                  InputField(
                    icon: Icons.lock_outline,
                    hint: "Senha",
                    obscure: true,
                    stream: _loginBlock.outPassword,
                    onChanged: _loginBlock.changePassword,
                  ),
                  SizedBox(height: 32,),
                  StreamBuilder<bool>(
                    stream: _loginBlock.outSubmitValid,
                    builder: (context, snapshot) {
                      return SizedBox(
                        height: 50,
                        child: RaisedButton(
                          color: Colors.deepPurple,
                          child: Text("Entrar"),
                          onPressed: snapshot.hasData ? (){} : null,
                          textColor: Colors.white,
                          disabledColor: Colors.deepPurple.withAlpha(140),
                        ),
                      );
                    }
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
