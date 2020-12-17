import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:bloc_login/model/api_model.dart';
import 'package:swagger/api.dart';

final _base = "https://trello.backend.tests.nekidaem.ru/api/v1";
final _tokenEndpoint = "/users/login/";
final _cardsEndpoint = "/api/v1/cards/";
final _tokenURL = _base + _tokenEndpoint;
final _cardsURL = _base + _cardsEndpoint;

Future<Token> getToken(UserLogin userLogin) async {
  print(_tokenURL);
  final http.Response response = await http.post(
    _tokenURL,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(userLogin.toDatabaseJson()),
  );
  if (response.statusCode == 200) {
    return Token.fromJson(json.decode(response.body));
  } else {
    print(json.decode(response.body).toString());
    throw Exception(json.decode(response.body));
  }
}

Future<List<CardCreateRecieve>> getCards(int row, String token) async {
  var api_instance = new CardsApi();
  api_instance.apiClient.addDefaultHeader("Authorization", "JWT $token");
  api_instance.apiClient.basePath = _base;
  return api_instance.cardsList(row: "$row");
}
