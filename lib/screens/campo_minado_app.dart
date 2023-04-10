import 'package:campo_minado/components/resultado_widget.dart';
import 'package:campo_minado/components/tabuleiro_widget.dart';
import 'package:campo_minado/models/campo.dart';
import 'package:campo_minado/models/tabuleiro.dart';
import 'package:flutter/material.dart';

class CampoMinado extends StatefulWidget {
  const CampoMinado({super.key});

  @override
  State<CampoMinado> createState() => _CampoMinadoState();
}

class _CampoMinadoState extends State<CampoMinado> {
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
          body: TabuleiroWidget(
            tabuleiro: Tabuleiro(
              linhas: 15,
              colunas: 15,
              qtdeBombas: 0,
            ),
            onAbrir: _abrir,
            onAlternarMarcacao: _alternacaoMarcacao,
          )),
      debugShowCheckedModeBanner: false,
    );
  }
}
