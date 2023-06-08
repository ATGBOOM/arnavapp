import 'package:arnavapp/base/application_constants.dart';
import 'package:arnavapp/base/logger_utils.dart';
import 'package:arnavapp/injector/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';

class FirebaseFileUtils{
  final _logger = locator<LoggerUtils>();
  final _TAG = "FirebaseFileUtils";

  Future<Either<String, List<String>>> fetchImages(String folderName) async{
    try{
      List<String> imageUrls = [];
      final firebaseFolderRef = FirebaseStorage.instance.ref().child(folderName);
      final collarImageList = await firebaseFolderRef.listAll();
      if (collarImageList.items.isNotEmpty){
        for(var currentImageItem in collarImageList.items){
          String imageURL = await currentImageItem.getDownloadURL();
          imageUrls.add(imageURL);
          //_logger.log(_TAG, "current image item${imageURL}");
        }
        return right(imageUrls);
      }
      else{
        return left(ApplicationConstants.KsomethingWentWrong);
      }
      
    }
    catch(error, stackTrace){
      _logger.log(_TAG, "Error $error and stack trace $stackTrace");
      return left(ApplicationConstants.KsomethingWentWrong);
    }
    
  }
}