import 'package:flutter/material.dart';
import 'package:maket/components/textTitle.dart';
import 'package:maket/constants.dart';
import 'package:maket/screens/voiceSettings.dart';

class SideBarMenu extends StatelessWidget {

  Widget buildMenuItem({
  @required String text,
    Color newColor,
    VoidCallback onTap,
}){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListTile(
        title: Text(
          text,
          style: TextStyle(
            color: newColor == null ? Colors.white : newColor,
            fontSize: 16
          ),
        ),
        onTap: onTap,
      ),
    );
}

void selectedItem(BuildContext context, int index){
    switch(index){
      case 10:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => VoiceSettings(),
        ));
        break;
    }
}

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
              color: ksideBarColor,
              child: ListView(
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('asset/icons/icon.jpg')
                      ),
                    ),
                  ),
                  TextTitleStyle('настройки пользователя'),
                  buildMenuItem(text: 'Моя учётная запись'),
                  buildMenuItem(text: 'Конфиденциальность'),
                  buildMenuItem(text: 'Авторизованные приложения'),
                  buildMenuItem(text: 'Интеграция'),
                  buildMenuItem(text: 'Выставление счетов'),
                  Divider(
                    color: Colors.grey,
                  ),
                  buildMenuItem(text: 'Discord Nitro',
                      newColor: kblue),
                  buildMenuItem(text: 'Склад подарков'),
                  buildMenuItem(text: 'Server Boost'),
                  buildMenuItem(text: 'HypeSquad'),
                  Divider(
                    color: Colors.grey,
                  ),
                  TextTitleStyle("настройки приложения"),
                  buildMenuItem(
                      text: 'Голос и видео',
                    onTap: () => selectedItem(context, 10),
                  ),
                  buildMenuItem(text: 'Оверлей'),
                  buildMenuItem(text: 'Уведомления'),
                  buildMenuItem(text: 'Горячие клавиши'),
                  buildMenuItem(text: 'Игровая активность'),
                  buildMenuItem(text: 'Текст и изображения'),
                ],
              ),
            ),
    );
  }
}
