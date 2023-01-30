import 'package:flutter/material.dart';
//My App Packages
import '../../../Models/account.dart';
import '../../UI/Components/CustomAppBar/custom_appbar.dart';
import '../../UI/Components/MainScreenTitle/main_screen_title.dart';
import '../../UI/ListViews/BudgetListView/ListItemView/budget_list_view.dart';

class BudgetKeeperHome extends StatefulWidget {
  const BudgetKeeperHome({super.key});

  @override
  State<BudgetKeeperHome> createState() => _BudgetKeeperHomeScreenState();
}

class _BudgetKeeperHomeScreenState extends State<BudgetKeeperHome> {
  List<Account> accountList = [];
  final shouldHideActions = false;
  final mainScreenTitle = 'Budget Keeper';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
            shouldHideActions: shouldHideActions,
            shouldHideLeading: true,
            refreshUpdateCallBack: () {
              setState(() {});
            }),
        body: Column(
          children: [
            ScreenMainTitle(mainScreenTitle: mainScreenTitle),
            ListContainer(refreshHomeCallback: () {
              setState(() {});
            })
          ],
        ));
  }
}

class ListContainer extends StatelessWidget {
  final void Function() refreshHomeCallback;

  const ListContainer({
    required this.refreshHomeCallback,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 40, left: 8, right: 8),
        child: BudgetListView(refreshHomeCallBack: refreshHomeCallback),
      ),
    );
  }
}
