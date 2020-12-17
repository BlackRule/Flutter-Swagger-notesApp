part of swagger.api;

class JSONWebToken {
  
  String username = null;
  

  String password = null;
  

  String token = null;
  
  JSONWebToken();

  @override
  String toString() {
    return 'JSONWebToken[username=$username, password=$password, token=$token, ]';
  }

  JSONWebToken.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    username =
        json['username']
    ;
    password =
        json['password']
    ;
    token =
        json['token']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
      'token': token
     };
  }

  static List<JSONWebToken> listFromJson(List<dynamic> json) {
    return json == null ? new List<JSONWebToken>() : json.map((value) => new JSONWebToken.fromJson(value)).toList();
  }

  static Map<String, JSONWebToken> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, JSONWebToken>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new JSONWebToken.fromJson(value));
    }
    return map;
  }
}

