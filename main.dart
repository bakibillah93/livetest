import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Shopping List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, String?>> shoppingItems = [
    {"name": "Apples", "icon": "🍎"},
    {"name": "Bananas", "icon": "🍌"},
    {"name": "Milk", "icon": "🥛"},
    {"name": "Bread", "icon": "🍞"},
    {"name": "Eggs", "icon": "🥚"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shopping List'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Add your cart functionality here
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: shoppingItems.length,
        itemBuilder: (BuildContext context, int index) {
          final String? itemIcon = shoppingItems[index]["icon"];
          final String? itemName = shoppingItems[index]["name"];
          return ListTile(
            leading: Text(itemIcon!),
            title: Text(itemName!),
            onTap: () {
              // Add item selection logic here
            },
          );
        },
      ),
    );
  }
}
