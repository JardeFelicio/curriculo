import 'package:curriculo/src/config/custom_colors.dart';
import 'package:curriculo/src/pages/home/components/profile_avatar.dart';
import 'package:curriculo/src/pages/home/singin_options/dados_pessoais.dart';
import 'package:curriculo/src/pages/home/singin_options/objetivo.dart';

import 'package:flutter/material.dart';

import 'option_menu.dart';

class BodyCProfileA extends StatelessWidget {
  const BodyCProfileA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //Avatar com imagem
        const ProfilePic(),

        //Espaçamento
        const SizedBox(
          height: 20,
        ),
        //Lista de opções
        OptionMenu(
          menuDescript: 'Dados Pessoais',
          iconMenu: Icons.person_outline,
          press: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (c) {
                  return const DadosPessoais();
                },
              ),
            );
          },
          //press: () => Navigator.pushNamed(context, DadosPessoais.routeName)
        ),
        OptionMenu(
          menuDescript: 'Objetivo',
          iconMenu: Icons.check_circle_outline_sharp,
          press: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (c) {
                  return const ObjetivoScreen();
                },
              ),
            );
          },
        ),
        OptionMenu(
          menuDescript: 'Resumo de Qualificações',
          iconMenu: Icons.checklist_rtl,
          press: () {},
        ),
        OptionMenu(
          menuDescript: 'Formação Educacional',
          iconMenu: Icons.school_outlined,
          press: () {},
        ),
        OptionMenu(
          menuDescript: 'Experiência Profissinal',
          iconMenu: Icons.work_history_outlined,
          press: () {},
        ),
        OptionMenu(
          menuDescript: 'Cursos Extracurriculares',
          iconMenu: Icons.fact_check_outlined,
          press: () {},
        ),
        OptionMenu(
          menuDescript: 'Qualificações',
          iconMenu: Icons.content_paste_sharp,
          press: () {},
        ),
        OptionMenu(
          menuDescript: 'Idiomas',
          iconMenu: Icons.chat_outlined,
          press: () {},
        ),
        OptionMenu(
          menuDescript: 'Informações adicionais',
          iconMenu: Icons.person_add_outlined,
          press: () {},
        ),

        //Botao de gerar curriculo
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 4),
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: CustomColor.customPink,
              padding: const EdgeInsets.all(15),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(35),
                ),
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Gerar curriculo',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
