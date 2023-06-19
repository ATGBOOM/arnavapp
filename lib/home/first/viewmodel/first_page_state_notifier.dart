import 'package:arnavapp/home/first/viewstate/first_page_view_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../base/application_constants.dart';
import '../../../base/firebase_file_utils.dart';
import '../../../base/logger_utils.dart';
import '../../../injector/injection.dart';

class FirstPageStateNotifier extends StateNotifier<FirstPageViewState> {
  final _logger = locator<LoggerUtils>();
  final _TAG = "FirstPageStateNotifier";
  FirstPageStateNotifier(): super(const FirstPageViewState.loading()){
   loadImages();
  }

  Future<void> loadImages() async{
    try{
      state = const FirstPageViewState.loading();
      List<String> carouselImagesList = [];
      List<String> fabricImagesList = [];
      FirebaseFileUtils fileUtils = FirebaseFileUtils();
      var response = await Future.wait([
        fileUtils.fetchImages(ApplicationConstants.KcarouselImagesPath),
        fileUtils.fetchImages(ApplicationConstants.KfabricImagesPath),
      ]);
      var carouselImageResponse = response[0];
      var fabricImageResponse = response[1];

      carouselImageResponse.fold(
              (String errorMessage){
                state = FirstPageViewState.error(errorMessage);
              },
              (List<String> imageURLs) {
                carouselImagesList.addAll(imageURLs);
              }
      );
      fabricImageResponse.fold(
              (String errorMessage){
            state = FirstPageViewState.error(errorMessage);
          },
              (List<String> imageURLs) {
            fabricImagesList.addAll(imageURLs);
          }
      );
      state = FirstPageViewState.displayProducts(fabricImagesList, carouselImagesList);
    }
    catch(error, stackTrace){
      _logger.log(_TAG, "error occured $error and stack trace $stackTrace");
    }
  }

}