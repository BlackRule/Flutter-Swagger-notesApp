part of swagger.api;

class CardUpdateDelete {
  
  int id = null;
  

  String row = null;
  //enum rowEnum {  0,  1,  2,  3,  };

  int seqNum = null;
   // range from -2147483648 to 2147483647//

  String text = null;
  
  CardUpdateDelete();

  @override
  String toString() {
    return 'CardUpdateDelete[id=$id, row=$row, seqNum=$seqNum, text=$text, ]';
  }

  CardUpdateDelete.fromJson(Map<String, dynamic> json) {
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

  static List<CardUpdateDelete> listFromJson(List<dynamic> json) {
    return json == null ? new List<CardUpdateDelete>() : json.map((value) => new CardUpdateDelete.fromJson(value)).toList();
  }

  static Map<String, CardUpdateDelete> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CardUpdateDelete>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CardUpdateDelete.fromJson(value));
    }
    return map;
  }
}

