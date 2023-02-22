import 'package:flutter/services.dart';

class StoreLocalSource {
  Future<String> fetchAllStore() async {
    return await rootBundle.loadString("asset/local_data/store_list.json");
  }
}
