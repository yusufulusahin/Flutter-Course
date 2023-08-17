class PostModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  PostModel({this.userId, this.id, this.title, this.body});
  //kod yazılmaz
  PostModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId']; //FROM JSON
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }
  //kod yazılmaz
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['id'] = id; //TO JSON
    data['title'] = title;
    data['body'] = body;
    return data;
  }
}
