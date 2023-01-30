import 'package:flutter/material.dart';

class LeadingBackButton extends StatelessWidget {
  final backButtonTextStyle = const TextStyle(
    color: Color.fromARGB(255, 67, 86, 200),
  );

  const LeadingBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Row(
        children: [
          const Icon(
            Icons.arrow_back_ios,
            color: Color.fromARGB(255, 67, 86, 200),
          ),
          Text(
            " Back",
            style: backButtonTextStyle,
          )
        ],
      ),
      onPressed: () => Navigator.of(context).pop(),
    );
  }
}
