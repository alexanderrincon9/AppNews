import 'package:app_news2/presentation/screens/articles/home_articles.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    name: HomeArticles.name,
    builder: (context, state) => const HomeArticles(),
  ),
]);
