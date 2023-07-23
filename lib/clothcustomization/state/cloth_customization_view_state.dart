import 'package:freezed_annotation/freezed_annotation.dart';

import '../../base/customization_enum.dart';
part 'cloth_customization_view_state.freezed.dart';
@freezed
class ClothCustomizationViewState with _$ClothCustomizationViewState{
  const factory ClothCustomizationViewState.displayClothStyle(
      CustomizationEnum customizationEnum,
      List<String> clothStylesList,
      String stepperMessage,
      String titleMessage,
      ) = _DisplayClothStyles;
  const factory ClothCustomizationViewState.loading() = _Loading;
  const factory ClothCustomizationViewState.error(String errorMessage) = _Error;

}