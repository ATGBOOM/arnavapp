import 'package:arnavapp/home/first/viewstate/first_page_view_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../base/application_constants.dart';
import '../../../base/firebase_file_utils.dart';
import '../../../base/logger_utils.dart';
import '../../../injector/injection.dart';

class FirstPageStateNotifier extends StateNotifier<FirstPageViewState> {
  final _logger = locator<LoggerUtils>();
  final _TAG = "FirstPageStateNotifier";
  FirstPageStateNotifier(): super(const FirstPageViewState.loading());

  Future<void> loadImages() async{
    try{
      List<String> carouselImagesList = [];
      List<String> fabricImagesList = [];
      FirebaseFileUtils fileUtils = FirebaseFileUtils();
      var response = await Future.wait([
        fileUtils.fetchImages(ApplicationConstants.KcarouselImagesPath),
        fileUtils.fetchImages(ApplicationConstants.KfabricImagesPath),
      ]);

    }
    catch(error, stackTrace){
      _logger.log(_TAG, "error occured $error and stack trace $stackTrace");
    }
  }

}