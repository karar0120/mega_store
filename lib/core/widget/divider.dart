import 'package:flutter/material.dart';
import 'package:mega_store/core/helper/strings_manger.dart';
import 'package:mega_store/core/helper/values_manger.dart';
import 'package:mega_store/core/theming/styles.dart';

class DividerOr extends StatelessWidget {
  const DividerOr({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(
                left: AppPadding.p10, right: AppPadding.p15),
            child: const Divider(
              thickness: 2,
            )),
      ),
      Text(
        AppString.or,
        style: TextStyles.font14GrayBlod,
      ),
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(
                left: AppPadding.p15, right: AppPadding.p10),
            child: const Divider(
              thickness: 2,
            )),
      ),
    ]);
  }
}
