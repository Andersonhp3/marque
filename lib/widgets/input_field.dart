import 'package:flutter/material.dart';

class InputField extends StatelessWidget {

  final IconData icon;
  final String hint;
  final bool obscure;
  final Stream<String> stream;
  final Function(String) onChanged;

  InputField({this.icon, this.hint, this.obscure, this.stream, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
      stream: stream,
      builder: (context, snapshot) {
        return TextField(
          onChanged: onChanged,
          decoration: InputDecoration(
            icon: Icon(icon, color: Colors.deepPurple,),
            hintText: hint,
            hintStyle: TextStyle(color: Colors.deepPurple),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.deepPurple)
            ),
            contentPadding: EdgeInsets.only(
              left: 5,
              right: 20,
              bottom: 16,
              top: 20
            ),
            errorText: snapshot.hasError ? snapshot.error : null,
          ),
          style: TextStyle(color: Colors.deepPurple, fontSize: 17),
          obscureText: obscure,
        );
      }
    );
  }
}
