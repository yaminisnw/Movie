import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie/model/movie_details.dart';
import 'package:movie/views/content_page.dart';

import '../../model/movie.dart';
import '../../ui.dart';
import '../home_page.dart';



part 'app_routes.g.dart';

final RouterConfig<Object> appRouter = GoRouter(
  routes: $appRoutes,
  redirect: (BuildContext c, GoRouterState s) {
    return null;
  },
  debugLogDiagnostics: true,
);

/// Home Page
@TypedGoRoute<HomePageRoute>(
  path: '/',
  routes: [
   /*TypedGoRoute<ProfilePageRoute>(
      path: '/profile/:id',
    )*/
  ],
)
@immutable
class HomePageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

@immutable
class ProfilePageRoute extends GoRouteData {
  const ProfilePageRoute({
    required this.id,
  });

  final Movie id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    print(id);
    return ContentPage(movieDetails: id);
  }
}



/*@TypedGoRoute<TermsPageRoute>(
  path: '/terms',
)
@immutable
class TermsPageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const TermsPage();
  }
}*/
