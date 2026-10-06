import 'package:flutter/material.dart';
import 'app_drawer.dart';

class HomePage extends StatelessWidget {
  final ThemeMode themeMode;
  final VoidCallback onToggleTheme;

  HomePage({required this.themeMode, required this.onToggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Telegram', style: TextStyle(fontSize: 22)),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      drawer: AppDrawer(themeMode: themeMode, onToggleTheme: onToggleTheme),
      body: ListView(
        children: [
          chatTile('Алексей', 'Привет! Как дела?', '12:30', 'А'),
          chatTile('Flutter Group', 'Новое задание 💼', '11:15', 'F'),
          chatTile('Мама', 'Позвони мне', '10:02', 'М'),
          chatTile('Telegram', 'Обновление приложения', 'Вчера', 'T'),
        ],
      ),
    );
  }

  Widget chatTile(String name, String message, String time, String letter) {
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
      subtitle: Text(message, style: TextStyle(fontSize: 14)),
      trailing: Text(time, style: TextStyle(color: Colors.grey, fontSize: 13)),
      onTap: () {},
    );
  }
}
