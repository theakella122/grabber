typedef ChaptersList = List<Chapter>;

final class Chapter {
  final String url;
  final String title;

  Chapter({
    required this.url,
    required this.title,
  });
}
