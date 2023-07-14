typedef ChaptersList = List<Chapter>;

final class Chapter {
  final String url;
  final String title;
  bool hasContent;
  String? content;

  Chapter({
    required this.url,
    required this.title,
    this.hasContent = false,
    this.content,
  });
}
