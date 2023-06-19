
import 'package:arnavapp/base/application_constants.dart';
import 'package:arnavapp/base/firebase_file_utils.dart';
import 'package:arnavapp/base/logger_utils.dart';
import 'package:arnavapp/commonui/bespoke_error_widget.dart';
import 'package:arnavapp/home/first/cloth_item_view.dart';
import 'package:arnavapp/providers/providers.dart';
import 'package:arnavapp/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
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

                CarouselSlider.builder(
                    itemCount: carouselImages.length,
                    itemBuilder: (BuildContext context, int itemIndex, int pageIndex){
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: NetworkImage(carouselImages[itemIndex])
                          )
                        ),
                      );
                    },
                    options: CarouselOptions(
                      aspectRatio: 16/9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 2),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      scrollDirection: Axis.horizontal,
                    )
                ),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (BuildContext context, int index){
                      String imageURL = fabricImages[index];
                      return ClothItemView(
                          clothImageURL: imageURL
                      );
                    }
                ),
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