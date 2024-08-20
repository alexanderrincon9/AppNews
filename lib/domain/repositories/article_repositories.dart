import 'package:app_news2/domain/entities/article.dart';

abstract class ArticlesRepositories {
  Future<List<Article>> getHeadlinesForCountry({int page = 1});
}
