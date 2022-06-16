import 'package:auto_route/auto_route.dart';
import 'package:core_package/presentation/home_page/pages/home_page.dart';

export 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: [
    AutoRoute(page: HomePage),
  ],
)
class $AppRouter {}
