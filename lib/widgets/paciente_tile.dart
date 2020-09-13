import 'package:flutter/material.dart';

class PacienteTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final textStyle = TextStyle(color: Colors.deepPurple);

    return ListTile(
      title: Text(
        "Anderson Ricardo",
        style: textStyle,
      ),
      subtitle: Text(
        "Subtitle",
        style: textStyle,
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            "Marcado",
            style: textStyle,
          ),
          Text(
            "PG em aberto",
            style: textStyle,
          )
        ],
      ),
    );
  }
}
