part of swagger.api;

class RefreshJSONWebToken {
  
  String token = null;
  
  RefreshJSONWebToken();

  @override
  String toString() {
    return 'RefreshJSONWebToken[token=$token, ]';
  }

  RefreshJSONWebToken.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    token =
        json['token']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'token': token
     };
  }

  static List<RefreshJSONWebToken> listFromJson(List<dynamic> json) {
    return json == null ? new List<RefreshJSONWebToken>() : json.map((value) => new RefreshJSONWebToken.fromJson(value)).toList();
  }

  static Map<String, RefreshJSONWebToken> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RefreshJSONWebToken>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RefreshJSONWebToken.fromJson(value));
    }
    return map;
  }
}

