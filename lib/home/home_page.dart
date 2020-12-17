import 'package:bloc_login/api_connection/api_connection.dart';
import 'package:bloc_login/dao/user_dao.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_login/bloc/authentication_bloc.dart';

class HomePage extends StatelessWidget {
  final List<ListItem> items;

  UserDao userDao;

  HomePage({Key key, @required this.items, @required this.userDao})
      : super(key: key);

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
                ListView.builder(
// Let the ListView know how many items it needs to build.
                  itemCount: items.length,
// Provide a builder function. This is where the magic happens.
// Convert each item into a widget based on the type of item it is.
                  itemBuilder: (context, index) {
                    final item = items[index];

                    return ListTile(
                      title: item.buildTitle(context),
                      subtitle: item.buildSubtitle(context),
                    );
                  },
                ),
                FutureBuilder<String>(
                  future: userDao.getUserAuthToken(0),
// a previously-obtained Future<String> or null
                  builder:
                      (BuildContext context, AsyncSnapshot<String> snapshot) {
                    if (snapshot.hasData) {
                      getCards(0, snapshot.data);
                      return Text(snapshot.data);
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
                Icon(Icons.directions_transit),
                Icon(Icons.directions_bike),
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
