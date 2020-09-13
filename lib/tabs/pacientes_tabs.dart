import 'package:flutter/material.dart';
import 'package:marque/widgets/paciente_tile.dart';

class PacientesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: TextField(
            style: TextStyle(color: Colors.deepPurple),
            decoration: InputDecoration(
              hintText: "Pesquisar",
              hintStyle: TextStyle(color: Colors.deepPurple),
              icon: Icon(Icons.search, color: Colors.deepPurple,),
              border: InputBorder.none,
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return PacienteTile();
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: 5
          ),
        )
      ],
    );
  }
}

