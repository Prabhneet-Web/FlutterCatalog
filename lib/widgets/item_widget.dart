import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  // ignore: unnecessary_null_comparison
  const ItemWidget({Key? key, required this.item})
      // ignore: unnecessary_null_comparison
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          SnackBar(
            content: Text("${item.name} is Clicked!"),
            duration: const Duration(seconds: 4),
          );
        },
        leading: SizedBox(width: 80, child: Image.network(item.image)),
        title: Text(item.name),
        subtitle: Text(item.desc),  
        trailing: Text(
          "₹ ${item.price.toString()}",
          textScaleFactor: 1.1,
          style: TextStyle(
            color: Colors.teal[800],
          ),
        ),
      ),
    );
  }
}
