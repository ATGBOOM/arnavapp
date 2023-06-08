
import 'package:arnavapp/base/application_constants.dart';
import 'package:arnavapp/base/firebase_file_utils.dart';
import 'package:arnavapp/base/logger_utils.dart';
import 'package:arnavapp/commonui/bespoke_error_widget.dart';
import 'package:arnavapp/providers/providers.dart';
import 'package:arnavapp/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

import '../../commonui/custom_loader.dart';
import '../../injector/injection.dart';

class FirstPage extends HookConsumerWidget{
  final _logger = locator<LoggerUtils>();
  final _TAG = "FirstPage";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firstPageStateNotifier = ref.watch(firstPageProvider);
    return firstPageStateNotifier.when(
        displayProducts: (List<String> fabricImages, List<String> carouselImages){
          return Scaffold(
            body: Column(
              children: [
                Row(
                  children: [
                    Text("hello first page")
                  ],
                ),
                ElevatedButton(
                    onPressed: () async{
                      FirebaseFileUtils fileUtils = FirebaseFileUtils();
                      var response = await fileUtils.fetchImages(ApplicationConstants.KcarouselImagesPath);
                      response.fold(
                              (String errorMessage) {
                            _logger.log(_TAG, "error occurred $errorMessage");
                          },
                              (List<String> imageUrls) {
                            _logger.log(_TAG, "response received $imageUrls");
                          }
                      );
                    },
                    child: Text("TEST")
                )
              ],
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