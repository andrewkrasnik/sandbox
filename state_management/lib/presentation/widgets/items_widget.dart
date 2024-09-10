import 'package:flutter/material.dart';
import 'package:state_management/domain/entities/list_item.dart';

class ItemsWidget extends StatelessWidget {
  final List<ListItem> items;
  const ItemsWidget({required this.items, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(items[index].title,
            style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(items[index].subtitle),
        leading: Icon(items[index].icon),
      ),
    );
  }
}
