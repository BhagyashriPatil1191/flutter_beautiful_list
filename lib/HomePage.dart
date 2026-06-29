import 'package:beautiful_list_ui/model/item_data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Beautiful Data"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.only(bottom: 12),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.all(16),
              leading: CircleAvatar(
                backgroundColor: Colors.indigo,
                child: Text(
                  "${index + 1}",
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(
                items[index].title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 6),
                child: Text(items[index].subtitle),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          );
        },
      ),
    );
  }
}
