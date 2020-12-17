import 'package:bloc_login/api_connection/api_connection.dart';
import 'package:bloc_login/dao/user_dao.dart';
import 'package:bloc_login/src/CardsList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_login/bloc/authentication_bloc.dart';
import 'package:swagger/api.dart';

class HomePage extends StatelessWidget {
  UserDao userDao;

  HomePage({Key key, @required this.userDao}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: Text(''),
              actions: [
                IconButton(
                  icon: Icon(Icons.arrow_back_rounded, color: Colors.green),
                  onPressed: () {
                    BlocProvider.of<AuthenticationBloc>(context)
                        .add(LoggedOut());
                  },
                )
              ],
              bottom: TabBar(
                tabs: [
                  Tab(icon: Text("On hold")),
                  Tab(icon: Text("In progress")),
                  Tab(icon: Text("Needs review")),
                  Tab(icon: Text("Approved")),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                FutureBuilder<String>(
                  future: userDao.getUserAuthToken(0),
                  builder:
                      (BuildContext context, AsyncSnapshot<String> snapshot) {
                    if (snapshot.hasData) {
                      return CardsList.getFutureCardList(0, snapshot.data);
                    } else if (snapshot.hasError) {
                      return Text(snapshot.error);
                    } else {
                      return SizedBox(
                        child: CircularProgressIndicator(),
                        width: 60,
                        height: 60,
                      );
                    }
                  },
                ),
                FutureBuilder<String>(
                  future: userDao.getUserAuthToken(0),
                  builder:
                      (BuildContext context, AsyncSnapshot<String> snapshot) {
                    if (snapshot.hasData) {
                      return CardsList.getFutureCardList(1, snapshot.data);
                    } else if (snapshot.hasError) {
                      return Text(snapshot.error);
                    } else {
                      return SizedBox(
                        child: CircularProgressIndicator(),
                        width: 60,
                        height: 60,
                      );
                    }
                  },
                ),
                FutureBuilder<String>(
                  future: userDao.getUserAuthToken(0),
                  builder:
                      (BuildContext context, AsyncSnapshot<String> snapshot) {
                    if (snapshot.hasData) {
                      return CardsList.getFutureCardList(2, snapshot.data);
                    } else if (snapshot.hasError) {
                      return Text(snapshot.error);
                    } else {
                      return SizedBox(
                        child: CircularProgressIndicator(),
                        width: 60,
                        height: 60,
                      );
                    }
                  },
                ),
                FutureBuilder<String>(
                  future: userDao.getUserAuthToken(0),
                  builder:
                      (BuildContext context, AsyncSnapshot<String> snapshot) {
                    if (snapshot.hasData) {
                      return CardsList.getFutureCardList(3, snapshot.data);
                    } else if (snapshot.hasError) {
                      return Text(snapshot.error);
                    } else {
                      return SizedBox(
                        child: CircularProgressIndicator(),
                        width: 60,
                        height: 60,
                      );
                    }
                  },
                ),
              ],
            )));
  }
}

/// The base class for the different types of items the list can contain.
abstract class ListItem {
  /// The title line to show in a list item.
  Widget buildTitle(BuildContext context);

  /// The subtitle line, if any, to show in a list item.
  Widget buildSubtitle(BuildContext context);
}

/// A ListItem that contains data to display a message.
class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);

  Widget buildTitle(BuildContext context) => Text(sender);

  Widget buildSubtitle(BuildContext context) => Text(body);
}
