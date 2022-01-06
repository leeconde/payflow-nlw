import 'package:flutter/material.dart';
import 'package:payflow/shared/widgets/divider_vertical/divider_vertical_widget.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

class SetLabelButton extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secodaryLabel;
  final VoidCallback secodaryOnPressed;

  const SetLabelButton(
      {Key? key,
      required this.primaryLabel,
      required this.primaryOnPressed,
      required this.secodaryLabel,
      required this.secodaryOnPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: Row(
        children: [
          Expanded(
            child: LabelButton(
              label: primaryLabel,
              onPressed: primaryOnPressed,
            ),
          ),
          DividerVertificalWidget(),
          Expanded(
            child: LabelButton(
              label: secodaryLabel,
              onPressed: secodaryOnPressed,
            ),
          ),
        ],
      ),
    );
  }
}