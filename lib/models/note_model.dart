class NoteModel {
  String title;
  String subTitle;
  String token;
  String photo;
  final String date;
  int color;

  NoteModel({
    required this.title,
    required this.token,
    required this.photo,
    required this.subTitle,
    required this.date,
    required this.color,
  });

  factory NoteModel.fromMap(jsonData) {
    return NoteModel(
      title: jsonData['title'],
      photo: jsonData['photo'],
      subTitle: jsonData['subTitle'],
      date: jsonData['date'],
      color: jsonData['color'],
      token: jsonData['token'],
    );
  }
}
