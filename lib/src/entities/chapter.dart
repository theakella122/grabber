typedef ChaptersList = List<Chapter>;

final class Chapter {
  final String url;
  final String title;
  final bool hasContent;
  final String content;

  const Chapter({
    required this.url,
    required this.title,
    this.hasContent = false,
    this.content = '',
  });
}
