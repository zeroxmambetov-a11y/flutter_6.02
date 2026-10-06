import 'package:flutter/material.dart';
import 'calls_page.dart';
import 'contacts_page.dart';
import 'settings_page.dart';

class AppDrawer extends StatelessWidget {
  final ThemeMode themeMode;
  final VoidCallback onToggleTheme;

  AppDrawer({required this.themeMode, required this.onToggleTheme});

  @override
  Widget build(BuildContext context) {
    final telegramBlue = Color(0xFF2AABEE);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Шапка
          Container(
            height: 170,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(color: telegramBlue),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 34, color: telegramBlue),
                ),
                SizedBox(height: 12),
                Text(
                  'Иван Иванов',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '+996 700 123 456',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),

          // Пункты меню
          ListTile(
            leading: Icon(Icons.chat),
            title: Text('Чаты'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text('Звонки'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => CallsPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person_2),
            title: Text('Контакты'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ContactsPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Настройки'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => SettingsPage()),
              );
            },
          ),

          Divider(),

          // Переключатель темы
          SwitchListTile(
            secondary: Icon(
              themeMode == ThemeMode.light ? Icons.dark_mode : Icons.light_mode,
            ),
            title: Text(
              themeMode == ThemeMode.light ? 'Тёмная тема' : 'Светлая тема',
            ),
            value: themeMode == ThemeMode.dark,
            onChanged: (value) => onToggleTheme(),
          ),
        ],
      ),
    );
  }
}
