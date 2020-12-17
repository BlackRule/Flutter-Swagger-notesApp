import 'package:bloc_login/api_connection/api_connection.dart';
import 'package:bloc_login/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:swagger/api.dart';

class CardsList {
  static getFutureCardList(int row, String token) {
    return FutureBuilder<List<CardCreateRecieve>>(
        future: getCards(row, token),
        builder: (BuildContext context,
            AsyncSnapshot<List<CardCreateRecieve>> snapshot) {
          if (snapshot.hasData) {
            var li = List<ListItem>.generate(
                snapshot.data.length,
                (i) => MessageItem(
                    "${snapshot.data[i].id}", "${snapshot.data[i].text}"));
            return ListView.builder(
              itemCount: li.length,
              itemBuilder: (context, index) {
                final item = li[index];
                return ListTile(
                  title: item.buildTitle(context),
                  subtitle: item.buildSubtitle(context),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text(snapshot.error);
          } else {
            return SizedBox(
              child: CircularProgressIndicator(),
              width: 60,
              height: 60,
            );
          }
        });
  }
}
