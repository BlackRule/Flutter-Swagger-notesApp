import 'dart:async';
import 'dart:convert';
import 'package:bloc_login/model/card_model.dart';
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

Future<List<Card>> getCards(int row, String token) async {
  // swagger.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// swagger.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";
  var api_instance = new CardsApi();
  api_instance.apiClient.basePath = _base;
  api_instance.apiClient.setAccessToken("JWT $token");
  var l = api_instance.cardsList(row: "0");
  print(_cardsURL);
}
