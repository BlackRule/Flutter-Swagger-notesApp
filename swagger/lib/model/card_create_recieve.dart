part of swagger.api;

class CardCreateRecieve {
  
  int id = null;
  

  String row = null;
  //enum rowEnum {  0,  1,  2,  3,  };

  int seqNum = null;
  

  String text = null;
  
  CardCreateRecieve();

  @override
  String toString() {
    return 'CardCreateRecieve[id=$id, row=$row, seqNum=$seqNum, text=$text, ]';
  }

  CardCreateRecieve.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    row =
        json['row']
    ;
    seqNum =
        json['seq_num']
    ;
    text =
        json['text']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'row': row,
      'seq_num': seqNum,
      'text': text
     };
  }

  static List<CardCreateRecieve> listFromJson(List<dynamic> json) {
    return json == null ? new List<CardCreateRecieve>() : json.map((value) => new CardCreateRecieve.fromJson(value)).toList();
  }

  static Map<String, CardCreateRecieve> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CardCreateRecieve>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CardCreateRecieve.fromJson(value));
    }
    return map;
  }
}

