import 'package:curriculo/src/pages/home/singin_options/dados_pessoais.dart';
import 'package:curriculo/src/pages/home/singin_options/objetivo.dart';
import 'package:curriculo/src/pages/home/singin_options/resumo_screen.dart';

import 'package:flutter/cupertino.dart';

final Map<String, WidgetBuilder> routes = {
  DadosPessoais.routeName: (context) => const DadosPessoais(),
  ObjetivoScreen.routeName: (context) => const ObjetivoScreen(),
  ResumoScreen.routeName: (context) => const ResumoScreen(),
};

class FormacaoScreen {}
