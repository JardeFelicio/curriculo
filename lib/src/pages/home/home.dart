import 'package:curriculo/src/config/custom_colors.dart';
import 'package:curriculo/src/pages/home/components/body_profiler_two.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //AppBar
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            'Curriculo',
            style: TextStyle(color: Color(0xFF757575), fontSize: 18),
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          actions: [
            IconButton(
                color: CustomColor.customGrey,
                onPressed: () {},
                icon: const Icon(Icons.logout_outlined))
          ],
        ),

        //Body
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: [
            const BodyCProfileA(),
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.white,
            ),
          ],
        ),

        //BottonNavigationBar
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              currentIndex = index;
              pageController.jumpToPage(index);
            });
          },
          currentIndex: currentIndex,
          selectedItemColor: CustomColor.customPink,
          unselectedItemColor: CustomColor.customGrey.withAlpha(100),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined), label: 'Cadastro'),
            BottomNavigationBarItem(
                icon: Icon(Icons.content_paste_search), label: 'Curriculos'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined), label: 'info'),
          ],
        )
        /*Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: CustomColor.customWhite,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, -15),
                blurRadius: 20,
                color: const Color(0xffdadada).withOpacity(0.15))
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              color: CustomColor.customPink,
              onPressed: () {},
              icon: const Icon(Icons.person_outlined),
            ),
            IconButton(
              color: CustomColor.customPink,
              onPressed: () {},
              icon: const Icon(Icons.content_paste_search),
            ),
            IconButton(
              color: CustomColor.customPink,
              onPressed: () {},
              icon: const Icon(Icons.help_outline_outlined),
            ),
          ],
        ),
      ),*/
        );
  }
}
