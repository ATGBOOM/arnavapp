// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arnavapp/base/logger_utils.dart' as _i6;
import 'package:arnavapp/base/save_selection_details.dart' as _i8;
import 'package:arnavapp/dbhelper/i_local_storage_manager.dart' as _i4;
import 'package:arnavapp/dbhelper/isar_local_storage_manager.dart' as _i5;
import 'package:arnavapp/main.dart' as _i7;
import 'package:arnavapp/routes/app_router.gr.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../base/register_module.dart' as _i9;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.AppRouter>(registerModule.appRouter);
  gh.singleton<_i4.ILocalStorageManager>(_i5.IsarLocalStorageManager());
  gh.factory<_i6.LoggerUtils>(() => _i6.LoggerUtils());
  gh.factory<_i7.MyApp>(() => _i7.MyApp());
  gh.singleton<_i8.SaveSelectionDetails>(registerModule.savedetails);
  return getIt;
}

class _$RegisterModule extends _i9.RegisterModule {}
