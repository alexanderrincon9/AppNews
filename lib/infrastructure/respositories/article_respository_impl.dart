import 'package:app_news2/domain/datasource/article_datasource.dart';
import 'package:app_news2/domain/entities/article.dart';
import 'package:app_news2/domain/repositories/article_repositories.dart';

class ArticleRespositoryImpl extends ArticlesRepositories {
  final ArticleDatasource datasource;

  ArticleRespositoryImpl(this.datasource);

  @override
  Future<List<Article>> getHeadlinesForCountry({int page = 1}) {
    return datasource.getHeadlinesForCountry(page: page);
  }
}
