import 'package:dio/dio.dart';
import 'package:grabber/grabber.dart';
import 'package:html/parser.dart';

final class ScribblehubSource implements ISource {
  @override
  Dio client = Dio();

  @override
  Future<Book> getBook(String url) async {
    final response = await client.get(url);
    final document = parse(response.data.toString());

    final title = document.getElementsByClassName("fic_title").first.text;
    final synopsis = document.getElementsByClassName("wi_fic_desc").first.text;

    return Book(title: title, synopsis: synopsis);
  }

  @override
  Future<ChaptersList> getChaptersList(String url) async {
    final response = await client.get(url);
    final document = parse(response.data.toString());
    final chaptersElements = document.getElementsByClassName("toc_a");
    ChaptersList chapters = [];
    String chapterTitle = '';
    String chapterUrl = '';

    for (final e in chaptersElements) {
      chapterTitle = e.text;
      chapterUrl = e.attributes['href']!;
      chapters.add(
        Chapter(
          title: chapterTitle,
          url: chapterUrl,
        ),
      );
    }

    return chapters;
  }

  @override
  Future<String> getChapterContent(String url) async {
    final response = await client.get(url);
    final document = parse(response.data.toString());
    final content =
        document.getElementsByClassName("chapter-content").first.outerHtml;
    return content;
  }
}
