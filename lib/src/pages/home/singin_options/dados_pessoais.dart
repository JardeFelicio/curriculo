import 'package:curriculo/src/pages/home/components/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../../../config/custom_colors.dart';

class DadosPessoais extends StatelessWidget {
  static String routeName = '/dadosPessoais';
  const DadosPessoais({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      //AppBar
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Dados pessoais',
          style: TextStyle(
            color: Color(0xFF757575),
          ),
        ),
      ),

      //Body
      body: SizedBox(
        height: size.height,
        width: size.width,

        //Column
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              //Titlee
              const Text(
                'Dados pessoais',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 28,
                  height: 1.5,
                ),
              ),

              //Subtitle
              const Text(
                'Inisira dados para contato e endereço.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              //TextFormField
              const CustomTextField(
                icon: Icons.person_outlined,
                label: 'Nome',
              ),
              const CustomTextField(
                icon: Icons.location_on_outlined,
                label: 'Nacionalidade',
              ),
              const CustomTextField(
                icon: Icons.calendar_month,
                label: 'Data de nascimento',
              ),
              const CustomTextField(
                icon: Icons.location_on_outlined,
                label: 'Local de nascimento',
              ),
              const CustomTextField(
                icon: Icons.phone,
                label: 'Telefone',
              ),
              const CustomTextField(
                icon: Icons.phone_android,
                label: 'Celular',
              ),
              const CustomTextField(
                icon: Icons.mail_outlined,
                label: 'E-mail',
              ),
              const CustomTextField(
                icon: Icons.location_on_outlined,
                label: 'Endereço',
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 25, vertical: 4),
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
                        'Salvar',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
