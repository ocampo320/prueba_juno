import 'package:flutter/material.dart';

import '../utils/colors.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20,left: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Text(
          'Tasa de cambios',
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
        ),
        CircleAvatar(
          backgroundColor: AppColor.verdeJuno,
          child:  Icon(
            color: AppColor.black,
            Icons.perm_identity_sharp,
            size: 30,
          ),
        )
      ]),
    );
  }
}
