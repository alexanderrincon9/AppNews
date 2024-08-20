import 'package:app_news2/domain/entities/article.dart';
import 'package:app_news2/infrastructure/models/articledb/article_articledb.dart';

class ArticleMapper {
  static Article articleDBToEntity(ArticleArticleDB articledb) => Article(
      author: articledb.author,
      title: articledb.title,
      description: articledb.description,
      url: articledb.url,
      urlToImage: articledb.urlToImage,
      publishedAt: articledb.publishedAt,
      content: articledb.content);
}
