import 'dart:math';

import 'package:flutter/material.dart';
import 'package:state_management/domain/entities/item_list.dart';
import 'package:state_management/domain/entities/result.dart';

class GetItemsListUsecase {
  Future<Result<List<ItemList>, Exception>> call() async {
    await Future.delayed(const Duration(seconds: 2));

    final int = Random().nextInt(4);

    if (int == 0) {
      return Failure(Exception('Data loading error'));
    }

    return Success([
      ItemList(title: 'title', subtitle: 'subtitle', icon: Icons.ad_units),
      ItemList(title: 'title', subtitle: 'subtitle', icon: Icons.ad_units),
      ItemList(title: 'title', subtitle: 'subtitle', icon: Icons.ad_units),
      ItemList(title: 'title', subtitle: 'subtitle', icon: Icons.ad_units),
      ItemList(title: 'title', subtitle: 'subtitle', icon: Icons.ad_units),
      ItemList(title: 'title', subtitle: 'subtitle', icon: Icons.ad_units),
      ItemList(title: 'title', subtitle: 'subtitle', icon: Icons.ad_units),
      ItemList(title: 'title', subtitle: 'subtitle', icon: Icons.ad_units),
      ItemList(title: 'title', subtitle: 'subtitle', icon: Icons.ad_units),
      ItemList(title: 'title', subtitle: 'subtitle', icon: Icons.ad_units),
      ItemList(title: 'title', subtitle: 'subtitle', icon: Icons.ad_units),
    ]);
  }
}
