part of swagger.api;

class User {
  /* Обязательное поле. Не более 150 символов. Только буквы, цифры и символы @/./+/-/_. */
  String username = null;
  

  String email = null;
  

  String password = null;
  

  String token = null;
  
  User();

  @override
  String toString() {
    return 'User[username=$username, email=$email, password=$password, token=$token, ]';
  }

  User.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    username =
        json['username']
    ;
    email =
        json['email']
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
      'email': email,
      'password': password,
      'token': token
     };
  }

  static List<User> listFromJson(List<dynamic> json) {
    return json == null ? new List<User>() : json.map((value) => new User.fromJson(value)).toList();
  }

  static Map<String, User> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, User>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new User.fromJson(value));
    }
    return map;
  }
}

