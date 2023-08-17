class PostModel5 {
  int? userID;
  int? id;
  String? title;
  String? body;

  //initialze nedir bu değerler doldurulacak mı nedir demek.
}

class PostModel2 {
  int userID;
  int id;
  String title;
  String body;

  PostModel2(this.userID, this.id, this.title, this.body);
}

class PostModel3 {
  final int userID;
  final int id;
  final String title;
  final String body;
  PostModel3(
      {required this.userID,
      required this.id,
      required this.title,
      required this.body}); //named parametre alır.
}

class PostModelFav {
  final int? userID;
  final int? id;
  final String? title;
  final String? body;

  PostModelFav({this.userID, this.id, this.title, this.body});
}
