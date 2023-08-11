import 'package:arnavapp/base/logger_utils.dart';

import '../injector/injection.dart';

class SaveSelectionDetails{
  final _logger = locator<LoggerUtils>();
  final _TAG = "Save Selection Details";
  final Map<String, String> _detailsMap = Map();
  static final SaveSelectionDetails _instance = SaveSelectionDetails._init();
  SaveSelectionDetails._init();

  static SaveSelectionDetails get instance => _instance;

  void saveDetails(String key, String value){
    _detailsMap[key] = value;
  }

  Map<String, String> getDetails(){
    _detailsMap.forEach((key, value) {
      _logger.log(_TAG, "Key saved = $key");
      _logger.log(_TAG, "Value saved = $value");
    });
    return _detailsMap;
  }


}