import 'package:ecommerce/app/common/widgets/containers/circular_container.dart';
import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class AppChoiceChip extends StatelessWidget {
  const AppChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    required this.onSelected,
  });

  final String text;
  final bool selected;

  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = AppHelperFunction.getColor(text) != null;
    final dark = AppHelperFunction.isDarkMode(context);

    return Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
        child: ChoiceChip(
            label: isColor ? const SizedBox() : Text(text),
            selected: selected,
            onSelected: onSelected,
            labelStyle: isColor ? null : TextStyle(color: dark?AppColors.white:selected?AppColors.white:AppColors.black),
            avatar: isColor
                ? AppCircularContainer(shape: true, width: 50, height: 50, color: AppHelperFunction.getColor(text)!)
                : null,
            labelPadding: isColor ? const EdgeInsets.all(0) : null,
            padding: isColor ? const EdgeInsets.all(0) : null,
            shape: isColor ? const CircleBorder() : null,
            selectedColor: selected ? (dark ? AppColors.primary : AppColors.black) : AppColors.white,
            backgroundColor: isColor ? AppHelperFunction.getColor(text)! : null,
            side: isColor
                ? BorderSide(
                    color: selected
                        ? dark
                            ? AppColors.white
                            : AppColors.primary
                        : Colors.transparent)
                : BorderSide(
                    color: selected
                        ? dark
                            ? AppColors.white
                            : AppColors.primary
                        : AppColors.tertiaryText))); //// ChoiceChip
  }
}
