import 'package:flutter/material.dart';
import 'package:state_management/domain/entities/item_list.dart';

class ItemsListWidget extends StatelessWidget {
  final List<ItemList> items;
  const ItemsListWidget({required this.items, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(items[index].subtitle,
            style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(items[index].title),
        trailing: Icon(items[index].icon),
      ),
    );
  }
}
