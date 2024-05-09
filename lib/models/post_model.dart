class PostModel {
  String image_path;
  String title;
  String text;
  List<String> tools;
  String link;
  String side;

  PostModel({
    required this.image_path,
    required this.title,
    required this.text,
    required this.tools,
    required this.link,
    required this.side,
  });
}
