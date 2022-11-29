import 'package:flutter/material.dart';

import '../../../config/custom_colors.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
          width: 100,
          child: Stack(
            fit: StackFit.expand,
            children: [
              const CircleAvatar(
                backgroundImage:
                    //NetworkImage('assets/images/avatarprofile.png')
                    AssetImage("assets/images/avatarprofile.png"),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                      color: CustomColor.customGrey,
                      borderRadius: BorderRadius.circular(20)),
                  child: SizedBox(
                    height: 40,
                    width: 40,
                    child: IconButton(
                      color: CustomColor.customWhite,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.camera_enhance,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
