import 'package:built_collection/src/list.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:movie/core/services/api_services.dart';
import 'package:movie/core/services/app_service.dart';
import 'package:movie/model/movie.dart';
import 'package:state_notifier/state_notifier.dart';

import '../core/api/api_client.dart';
import '../core/view_model/view_model.dart';
import '../data/api_service_impl.dart';
import '../model/app_state.dart';
import '../provider/app_state_notifier.dart';
import '../ui.dart';

class AppProvider extends StatelessWidget {
  const AppProvider({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<AppViewModel, AppState>(
      create: (_) => AppViewModel(),
      child: child,
    );
  }
}

class AppViewModel extends AppStateNotifier<AppState>
    with LocatorMixin
    implements AppBaseViewModel {
  AppViewModel() : super(AppState());

  ApiServiceImpl get _apiservice => ApiServiceImpl(baseUrl: 'https://api.themoviedb.org/3/');
  @override
  Future<void> init() async {}

  Future<void> getPopular() async{
    final BuiltList<Movie>? results =await _apiservice.getPopular();
    state = state.rebuild((p0) => p0.popular=results?.toBuilder()) ;


  }

}
