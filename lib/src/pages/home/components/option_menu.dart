import 'package:flutter/material.dart';
import '../../../config/custom_colors.dart';

class OptionMenu extends StatelessWidget {
  final String menuDescript;
  final IconData iconMenu;
  final VoidCallback press;

  const OptionMenu({
    Key? key,
    required this.menuDescript,
    required this.iconMenu,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.grey.shade200,
          padding: const EdgeInsets.all(15),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
        ),
        onPressed: press,
        child: Row(
          children: [
            Icon(
              iconMenu,
              size: 32,
              color: CustomColor.customPink,
            ),
            const SizedBox(
              height: 20,
              width: 15,
            ),
            Expanded(
              child: Text(
                menuDescript,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: CustomColor.customPink,
            ),
          ],
        ),
      ),
    );
  }
}
