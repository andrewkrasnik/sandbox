import 'dart:math';

import 'package:flutter/material.dart';
import 'package:state_management/domain/entities/list_item.dart';
import 'package:state_management/domain/entities/result.dart';

class GetItemsUsecase {
  Future<Result<List<ListItem>, Exception>> call() async {
    await Future.delayed(const Duration(seconds: 2));

    final int = Random().nextInt(4);

    if (int == 0) {
      return Failure(Exception('Data loading error'));
    }

    return Success([
      ListItem(title: 'title', subtitle: 'subtitle', icon: Icons.ad_units),
      ListItem(title: 'title', subtitle: 'subtitle', icon: Icons.ad_units),
      ListItem(title: 'title', subtitle: 'subtitle', icon: Icons.ad_units),
      ListItem(title: 'title', subtitle: 'subtitle', icon: Icons.ad_units),
      ListItem(title: 'title', subtitle: 'subtitle', icon: Icons.ad_units),
      ListItem(title: 'title', subtitle: 'subtitle', icon: Icons.ad_units),
      ListItem(title: 'title', subtitle: 'subtitle', icon: Icons.ad_units),
      ListItem(title: 'title', subtitle: 'subtitle', icon: Icons.ad_units),
      ListItem(title: 'title', subtitle: 'subtitle', icon: Icons.ad_units),
      ListItem(title: 'title', subtitle: 'subtitle', icon: Icons.ad_units),
      ListItem(title: 'title', subtitle: 'subtitle', icon: Icons.ad_units),
    ]);
  }
}
