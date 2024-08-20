import 'dart:convert';

import 'package:app_news2/infrastructure/models/articledb/article_articledb.dart';

ArticleDBResponse articleDBResponseFromJson(String str) => ArticleDBResponse.fromJson(json.decode(str));

String articledbResponseToJson(ArticleDBResponse data) => json.encode(data.toJson());

class ArticleDBResponse {
  String status;
  int totalResults;
  List<ArticleArticleDB> articles;

  ArticleDBResponse({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  factory ArticleDBResponse.fromJson(Map<String, dynamic> json) => ArticleDBResponse(
        status: json["status"],
        totalResults: json["totalResults"],
        articles: List<ArticleArticleDB>.from(json["articles"].map((x) => ArticleArticleDB.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "totalResults": totalResults,
        "articles": List<dynamic>.from(articles.map((x) => x.toJson())),
      };
}
