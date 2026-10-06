import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Контакты', style: TextStyle(fontSize: 22))),
      body: ListView(
        children: [
          contactTile('Алексей', 'онлайн', 'А'),
          contactTile('Мама', 'была недавно', 'М'),
          contactTile('Мария', 'была 2 часа назад', 'М'),
          contactTile('Иван', 'был вчера', 'И'),
        ],
      ),
    );
  }

  Widget contactTile(String name, String status, String letter) {
    return ListTile(
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: Colors.blue.shade200,
        child: Text(
          letter,
          style: TextStyle(
            color: Colors.blue.shade900,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      title: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      subtitle: Text(status, style: TextStyle(fontSize: 14)),
      onTap: () {},
    );
  }
}
