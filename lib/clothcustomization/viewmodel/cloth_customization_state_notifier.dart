import 'package:arnavapp/base/customization_enum.dart';
import 'package:arnavapp/base/logger_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../base/application_constants.dart';
import '../../base/firebase_file_utils.dart';
import '../../injector/injection.dart';
import '../state/cloth_customization_view_state.dart';

class ClothCustomizationStateNotifier extends StateNotifier<ClothCustomizationViewState>{

  final _logger = locator<LoggerUtils>();
  final _TAG = "ClothCustomizationStateNotifier";

  ClothCustomizationStateNotifier():super(const ClothCustomizationViewState.loading()){
    fetchImages(CustomizationEnum.CUFF_CUSTOMIZATION);
  }

  Future<void> fetchImages(CustomizationEnum currentCustomization) async{
    state = const ClothCustomizationViewState.loading();
    List<String> imagesList =[];
    FirebaseFileUtils fileUtils = FirebaseFileUtils();
    Either<String, List<String>>? response;
    String stepperMessage = "";
    String titleMessage = "";
    switch(currentCustomization){

      case CustomizationEnum.CUFF_CUSTOMIZATION:{
        response = await fileUtils.fetchImages(ApplicationConstants.KCuffsImagesPath);
        stepperMessage = "Choose a custom cuff style";
        titleMessage = "Choose a cuff";
      }
      break;
      case CustomizationEnum.COLLAR_CUSTOMIZATION:{
        response = await fileUtils.fetchImages(ApplicationConstants.KCollarsImagesPath);
        stepperMessage = "Choose a custom collar style";
        titleMessage = "Choose a collar";
      }
      break;
      case CustomizationEnum.FITTINGS_CUSTOMIZATION:{
        response = await fileUtils.fetchImages(ApplicationConstants.KFittingsImagesPath);
        stepperMessage = "Choose a custom fitting style";
        titleMessage = "Choose a fitting";
      }
      break;
      case CustomizationEnum.PLACKETS_CUSTOMIZATION:{
        response = await fileUtils.fetchImages(ApplicationConstants.KPlacketsImagesPath);
        stepperMessage = "Choose a custom placket style";
        titleMessage = "Choose plackets";
      }
      break;
      case CustomizationEnum.SLEEVES_CUSTOMIZATION:{
        response = await fileUtils.fetchImages(ApplicationConstants.KSleevesImagesPath);
        stepperMessage = "Choose a custom sleeves style";
        titleMessage = "Choose sleeves";
      }
      break;
    }
    response.fold(
            (String errorMessage){
          state = ClothCustomizationViewState.error(errorMessage);
        },
            (List<String> imageURLs) {
          imagesList.addAll(imageURLs);
          state = ClothCustomizationViewState.displayClothStyle(currentCustomization, imagesList, stepperMessage, titleMessage);
          //_logger.log(_TAG, "images found $imagesList");
        }
    );
  }
}