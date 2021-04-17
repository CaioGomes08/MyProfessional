import 'package:flutter/material.dart';

class Biography extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Text('Editar Perfil'),
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16)),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            elevation: MaterialStateProperty.all(0),
            padding:
                MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 35)),
            side: MaterialStateProperty.all(
              BorderSide(
                  color: Colors.white, style: BorderStyle.solid, width: 2),
            ),
          ),
        ),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {},
          child: Text('Visualizar Orçamentos'),
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16)),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            elevation: MaterialStateProperty.all(0),
            padding:
                MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 35)),
            side: MaterialStateProperty.all(
              BorderSide(
                  color: Colors.white, style: BorderStyle.solid, width: 2),
            ),
          ),
        )
      ],
    );
  }
}
