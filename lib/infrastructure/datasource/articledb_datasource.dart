import 'package:app_news2/config/constants/environment.dart';
import 'package:app_news2/domain/datasource/article_datasource.dart';
import 'package:app_news2/domain/entities/article.dart';
import 'package:app_news2/infrastructure/mappers/article_mapper.dart';
import 'package:app_news2/infrastructure/models/articledb/articledb_response.dart';
import 'package:dio/dio.dart';

class ArticledbDatasource extends ArticleDatasource {
  final dio = Dio(BaseOptions(
      baseUrl: 'https://newsapi.org/v2', queryParameters: {'apiKey': Environment.theNewsDbKey, 'country': 'co'}));

  @override
  Future<List<Article>> getHeadlinesForCountry({int page = 1}) async {
    final response = await dio.get('/top-headlines?country=co');

    final articleDBResponse = ArticleDBResponse.fromJson(response.data);

    final List<Article> articles =
        articleDBResponse.articles.map((articledb) => ArticleMapper.articleDBToEntity(articledb)).toList();

    return articles;
  }
}
