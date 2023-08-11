
import 'package:arnavapp/base/application_constants.dart';
import 'package:arnavapp/base/color_constants.dart';
import 'package:arnavapp/base/firebase_file_utils.dart';
import 'package:arnavapp/base/logger_utils.dart';
import 'package:arnavapp/base/save_selection_details.dart';
import 'package:arnavapp/commonui/bespoke_error_widget.dart';
import 'package:arnavapp/home/first/cloth_item_view.dart';
import 'package:arnavapp/providers/providers.dart';
import 'package:arnavapp/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

import '../../commonui/custom_loader.dart';
import '../../injector/injection.dart';

class FirstPage extends HookConsumerWidget{
  final _logger = locator<LoggerUtils>();
  final _TAG = "FirstPage";
  late PageController _pageController;
  CarouselController buttonCarouselController = CarouselController();
  final _saveSelectionDetails = locator<SaveSelectionDetails>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firstPageStateNotifier = ref.watch(firstPageProvider);
    final activePage = useState(0);
    useEffect((){
     _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
    });

    return firstPageStateNotifier.when(
        displayProducts: (List<String> fabricImages, List<String> carouselImages){
          return Scaffold(
            body: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    color: ColorConstants.kRedColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(18),
                      bottomRight: Radius.circular(18)
                    )
                  ),
                  child: Column(
                    children: [
                      CarouselSlider.builder(
                          carouselController: buttonCarouselController ,
                          itemCount: carouselImages.length,
                          itemBuilder: (BuildContext context, int itemIndex, int pageIndex){
                            return Container(
                              padding: EdgeInsets.all(6),
                              margin: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                    image: NetworkImage(carouselImages[itemIndex]),
                                    fit: BoxFit.cover,
                                  )
                              ),
                            );
                          },
                          options: CarouselOptions(
                              aspectRatio: 2,
                              viewportFraction: 1,
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
                              scrollPhysics: const BouncingScrollPhysics(),
                              onPageChanged: (index, reason){
                                activePage.value = index;
                              }
                          )

                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: carouselImages.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () =>
                                buttonCarouselController.animateToPage(entry.key),
                            child: Container(
                              width: activePage.value == entry.key ? 17 : 7,
                              height: 7.0,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 3.0,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: activePage.value == entry.key
                                      ? Colors.white
                                      : Colors.white
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (BuildContext context, int index){
                        String imageURL = fabricImages[index];

                        return ClothItemView(
                            onProductClicked: (String url){
                              _saveSelectionDetails.saveDetails("selectedfabric", url);
                              context.router.navigate(const ClothCustomizationViewRoute());
                            },
                            clothImageURL: imageURL
                        );
                      }
                  ),
                )
              ],
            )

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