import 'dart:convert';
import 'dart:math';

import 'package:what_to_eat/data/model/store/store_model.dart';
import 'package:what_to_eat/data/source/local/store_source/store_local_source.dart';
import 'package:what_to_eat/domain/repository/store_repo/store_repository.dart';

class StoreRepositoryImpl extends StoreRepository {
  final StoreLocalSource _storeLocalSource = StoreLocalSource();

  @override
  Future<List<StoreModel>> fetchAllStore() async {
    List<StoreModel> storeList = [];
    String jsonStr = await _storeLocalSource.fetchAllStore();
    var jsonList = jsonDecode(jsonStr);
    jsonList.forEach((json) {
      storeList.add(StoreModel.fromJson(json));
    });
    return storeList;
  }

  @override
  Future<StoreModel> getRandomStore() async {
    List<StoreModel> storeList = await fetchAllStore();
    int randomIndex = Random().nextInt(storeList.length);
    return storeList[randomIndex];
  }
}
