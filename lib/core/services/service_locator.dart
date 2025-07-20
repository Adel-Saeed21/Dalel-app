import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/features/auth/logic/auth_cubit.dart';
import 'package:get_it/get_it.dart';

final getIT = GetIt.instance;
void setUpServiceLocator() {
  getIT.registerSingleton<CacheHelper>(CacheHelper());
  getIT.registerSingleton<AuthCubit>(AuthCubit());
}
