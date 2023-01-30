import 'package:flutter/material.dart';
import 'package:budget_keeper/View/Screens/UpdateScreen/update_screen.dart';

class NewAccountButton extends StatelessWidget {
  final void Function() refreshHomeCallBack;
  final newAccountButtonStyle = ElevatedButton.styleFrom(
      elevation: 0,
      shape: const CircleBorder(),
      backgroundColor: Colors.white,
      foregroundColor: const Color.fromARGB(255, 67, 86, 200));

  NewAccountButton({
    Key? key,
    required this.refreshHomeCallBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15.0, right: 10),
      child: ElevatedButton(
          style: newAccountButtonStyle,
          child: const Icon(Icons.add),
          onPressed: () async {
            await navigateToUpdateScreen(context);
            refreshHomeCallBack();
          }),
    );
  }

  //Private Methods
  Future navigateToUpdateScreen(BuildContext context) async {
    await Navigator.push(context,
        MaterialPageRoute(builder: (_) => const UpdateScreen(isNew: true)));
  }
}
