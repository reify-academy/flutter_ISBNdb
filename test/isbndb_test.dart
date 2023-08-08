import 'package:isbndb/isbndb.dart';
import 'package:test/test.dart';

void main() {
  group("ISBNdb", () {
    final isbndb = ISBNdb("put_your_key_here");

    test('Should get books from Michel Bussi', () async {
      expect(
        await isbndb.getAuthor("Bussi Michel"),
        isA<Author>(),
      );
    });
    test('Should get authors matching name werber', () async {
      expect(
        await isbndb.getAuthors("werber"),
        isA<AuthorQueryResult>(),
      );
    });
    test('Should get "Learn Google Flutter Fast"', () async {
      expect(
        await isbndb.getBook("9781092297370"),
        isA<Book>(),
      );
    });
    test('Should get books about Flutter', () async {
      expect(
        await isbndb.getBooks("Google Flutter"),
        isA<BookQueryResult>(),
      );
    });
    test('Should get books from ISBNs', () async {
      expect(
        await isbndb.getBooksFromISBNs(["9781092297370", "9781680506952"]),
        isA<BookQueryResult>(),
      );
    });
    test('Should get list of publishers matching "Nathan"', () async {
      expect(
        await isbndb.getPublishers("Nathan"),
        isA<PublisherQueryResult>(),
      );
    });
    test('Should get books from publisher Nathan', () async {
      expect(
        await isbndb.getPublisher("Nathan"),
        isA<Publisher>(),
      );
    });
    test('Should get list of subjects matching "flutter"', () async {
      expect(
        await isbndb.getSubjects("flutter"),
        isA<SubjectQueryResult>(),
      );
    });
    test('Should get books matching subject "flutter"', () async {
      expect(
        await isbndb.getSubject("flutter"),
        isA<Subject>(),
      );
    });
  });
}
