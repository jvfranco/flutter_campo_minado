import 'package:campo_minado/components/campo_widget.dart';
import 'package:campo_minado/components/resultado_widget.dart';
import 'package:campo_minado/models/campo.dart';
import 'package:flutter/material.dart';

class CampoMinado extends StatelessWidget {
  const CampoMinado({super.key});

  void _reiniciar() {
    print('reiniciar...');
  }

  void _abrir(Campo campo) {
    print('abrir...');
  }

  void _alternacaoMarcacao(Campo campo) {
    print('alternarMarcacao...');
  }

  @override
  Widget build(BuildContext context) {
    Campo campo = Campo(linha: 0, coluna: 0);

    return MaterialApp(
      home: Scaffold(
        appBar: ResultadoWidget(
          venceu: true,
          onReiniciar: _reiniciar,
        ),
        body: CampoWidget(
          campo: campo,
          onAbrir: _abrir,
          onAlternarMarcacao: _alternacaoMarcacao,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
