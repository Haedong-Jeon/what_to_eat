import 'package:flutter/services.dart';
import 'package:what_to_eat/const/path/asset_path.dart';

class StoreLocalSource {
  Future<String> fetchAllStore() async {
    return await rootBundle.loadString("${LOCAL_DATA_PATH}store_list.json");
  }
}
