import 'package:flutter/material.dart';
import 'package:mobile_exam/utils/constants.dart';


class NFTAppBar extends StatelessWidget {
  final String leading;
  final Widget trailing;
  const NFTAppBar({
    super.key,
    required this.leading,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.07,
        ),
        Text(
          leading,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: kPrimaryColor,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
        ),
        trailing
      ],
    );
  }
}
