import 'package:ecommerce/app/utils/constants/colors.dart';
import 'package:ecommerce/app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppProfileMenuTile extends StatelessWidget {
  const AppProfileMenuTile({
    super.key,
    required this.leadingText,
    required this.title,
    this.icon,
    this.onTap,
  });

  final String leadingText;
  final String title;
  final IconData? icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: SizedBox(
          width:AppHelperFunction.screenWidth()/3.5,
          child: Text(leadingText,style: Theme.of(context).textTheme.bodySmall,overflow: TextOverflow.ellipsis)),
      title: Text(title, style: Theme.of(context).textTheme.bodyMedium,overflow: TextOverflow.ellipsis),
      trailing: IconButton(onPressed: onTap, icon: Icon(icon?? Iconsax.arrow_right_3)),
    ); // ListTile
  }
}