import 'package:flutter/material.dart';
import 'package:state_management/domain/entities/list_item.dart';

class GetItemsUsecase {
  Future<List<ListItem>> call() async {
    await Future.delayed(const Duration(seconds: 2));

    return [
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
    ];
  }
}
