import 'package:curriculo/src/pages/home/components/profile_avatar.dart';
import 'package:flutter/material.dart';

import 'option_menu.dart';

class BodyCProfile extends StatelessWidget {
  const BodyCProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          flex: 2,
          child: ProfilePic(),
        ),
        const SizedBox(
          height: 20,
        ),
        //Lista de opções
        Expanded(
          flex: 10,
          child: ListView(
            shrinkWrap: true,
            children: [
              OptionMenu(
                menuDescript: 'Dados Pessoais',
                iconMenu: Icons.person_outline,
                press: () {},
              ),
              OptionMenu(
                menuDescript: 'Objetivo',
                iconMenu: Icons.check_circle_outline_sharp,
                press: () {},
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
            ],
          ),
        ),
      ],
    );
  }
}
