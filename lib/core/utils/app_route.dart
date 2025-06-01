
import 'package:dalel/features/splash/presentation/views/spalsh_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter route = GoRouter(routes: [
  GoRoute(path:'/',
  builder:(context,state)=>const SpalshView()
  ),
  
]); 