import 'package:arnavapp/base/color_constants.dart';
import 'package:arnavapp/base/logger_utils.dart';
import 'package:arnavapp/base/save_selection_details.dart';
import 'package:arnavapp/clothcustomization/single_item_view.dart';
import 'package:arnavapp/commonui/bespoke_error_widget.dart';
import 'package:arnavapp/commonui/custom_loader.dart';
import 'package:arnavapp/commonui/nav_bar.dart';
import 'package:arnavapp/providers/providers.dart';
import 'package:arnavapp/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../base/application_constants.dart';
import '../base/customization_enum.dart';
import '../injector/injection.dart';

class ClothCustomizationView extends HookConsumerWidget{
  final _logger = locator<LoggerUtils>();
  final _TAG = "cloth customization view";
  final _saveSelectionDetails = locator<SaveSelectionDetails>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final selectedItemIndex = useState(-1);
    final clothStateProvider = ref.watch(clothCustomizationProvider);
    final clothStateNotifier = ref.watch(clothCustomizationProvider.notifier);
    return clothStateProvider.when(
        displayClothStyle: (
            CustomizationEnum customizationEnum,
            List<String> clothStylesList,
            String stepperMessage,
            String titleMessage,){
          return Scaffold(
            appBar: NavBar(),
            body: Center(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        titleMessage,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: ColorConstants.kRedColor,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(26),
                            bottomLeft: Radius.circular(26),
                          )
                      ),
                    ),
                    Expanded(
                        child: ListView.builder(
                        itemCount: clothStylesList.length,
                        itemBuilder: (BuildContext context, int index){
                          return SingleItemView(
                              imageURL: clothStylesList[index],
                              indexOfItem: index,
                              isItemSelected: selectedItemIndex.value == index,
                              onItemTapped: (int itemIndex){
                                selectedItemIndex.value = itemIndex;
                              },
                          );
                        }
                    )
                    )
                  ],
                )
            ),
            bottomNavigationBar: Stepper(
              steps: [
                Step(
                  title: Text(titleMessage),
                  content: Text(stepperMessage),
                  isActive: true,
                  state: StepState.complete,
                )
              ],
              onStepContinue: (){
                //_logger.log(_TAG, "continue button pressed");

                if (selectedItemIndex.value == -1){
                  final snackBar = SnackBar(
                    content: Text("Kindly select at least one style"),
                    backgroundColor: ColorConstants.kRedSelectedColor,
                    action: SnackBarAction(
                      label: 'Dismiss',
                      textColor: Colors.white,
                      onPressed: () {
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
                else {
                  _saveSelectionDetails.saveDetails("$customizationEnum", clothStylesList[selectedItemIndex.value]);
                  selectedItemIndex.value = -1;
                  if (customizationEnum ==
                      CustomizationEnum.CUFF_CUSTOMIZATION) {
                    clothStateNotifier.fetchImages(
                        CustomizationEnum.COLLAR_CUSTOMIZATION);
                  }
                  else if (customizationEnum ==
                      CustomizationEnum.COLLAR_CUSTOMIZATION) {
                    clothStateNotifier.fetchImages(
                        CustomizationEnum.FITTINGS_CUSTOMIZATION);
                  }
                  else if (customizationEnum ==
                      CustomizationEnum.FITTINGS_CUSTOMIZATION) {
                    clothStateNotifier.fetchImages(
                        CustomizationEnum.PLACKETS_CUSTOMIZATION);
                  }
                  else if (customizationEnum ==
                      CustomizationEnum.PLACKETS_CUSTOMIZATION) {
                    clothStateNotifier.fetchImages(
                        CustomizationEnum.SLEEVES_CUSTOMIZATION);
                  }
                }
              },
              onStepCancel: (){
                _saveSelectionDetails.getDetails();
                _logger.log(_TAG, "cancel button pressed");
                context.router.navigate(const OrdersPageRoute());
              },
            ),
          );
        },
        loading: (){
          return CustomLoader();
        },
        error: (String errorMessage){
          return BespokeErrorWidget(errorMessage);
        },
    );


  }

}