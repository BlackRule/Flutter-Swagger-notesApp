class Card {
  int id;
  String text;
  Card({this.id, this.text});

  factory Card.fromJson(Map<String, dynamic> data) => Card(
        id: data['id'],
        text: data['text'],
      );

  Map<String, dynamic> toJson() => {"id": this.id, "text": this.text};
}
