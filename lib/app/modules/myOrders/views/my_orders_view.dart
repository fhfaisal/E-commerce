import 'package:ecommerce/app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce/app/modules/myOrders/widgets/order_list_items.dart';
import 'package:ecommerce/app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/my_orders_controller.dart';

class MyOrdersView extends GetView<MyOrdersController> {
  const MyOrdersView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppAppBar(title: Text('My Orders')),
      body: Padding(
        padding: EdgeInsets.fromLTRB(AppSizes.defaultSpace,0,AppSizes.defaultSpace,AppSizes.defaultSpace,),
        child: OrderListItems(),
      ),
    );
  }
}
