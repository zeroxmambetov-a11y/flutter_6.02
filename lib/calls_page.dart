import 'package:flutter/material.dart';

class CallsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Звонки', style: TextStyle(fontSize: 22))),
      body: ListView(
        children: [
          callTile('Мама', 'Сегодня', true),
          callTile('Алексей', 'Вчера', false),
          callTile('Мария', '20 мая', true),
        ],
      ),
    );
  }

  Widget callTile(String name, String date, bool incoming) {
    return ListTile(
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: Colors.blue.shade200,
        child: Text(
          name[0],
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
      subtitle: Text(date, style: TextStyle(fontSize: 14)),
      trailing: Icon(
        incoming ? Icons.call_received : Icons.call_made,
        color: Colors.green,
      ),
      onTap: () {},
    );
  }
}
