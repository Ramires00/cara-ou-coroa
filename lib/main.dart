import 'dart:math';

import 'package:cara_ou_coroaa/resultado.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
    home: TelaPrincipal(),
  debugShowCheckedModeBanner: false,
  ));


class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {

  void _exibirResultado(){

    var itens = ["cara", "coroa"];
    var numero = Random().nextInt( itens.length ); // numero randomico gerado!
    var resultado = itens[numero];

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Resultado(resultado),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //alinhamento do eixo principal
          crossAxisAlignment: CrossAxisAlignment.stretch, // alinhamento do eixo
            children: [
              Image.asset("imagens/logo.png"),
              GestureDetector(
                onTap: _exibirResultado,
                child: Image.asset("imagens/botao_jogar.png"),
              ),
            ],
        ),
      ),
    );
    }
  }
