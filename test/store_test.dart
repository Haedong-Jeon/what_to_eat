import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:what_to_eat/data/model/store/store_model.dart';
import 'package:what_to_eat/domain/usecase/store_usecase/fetch_all_store.dart';
import 'package:what_to_eat/domain/usecase/store_usecase/get_random_store.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  test("전체 가게 리스트를 불러오는 테스트", () async {
    FetchAllStore fetchAllStore = FetchAllStore();
    List<StoreModel> storeList = await fetchAllStore();

    expect(storeList.isNotEmpty, true);
  });

  test("랜덤한 가게 하나를 뽑는 테스트", () async {
    GetRandomStore getRandomStore = GetRandomStore();
    StoreModel store = await getRandomStore();

    expect(store.name.isNotEmpty, true);
  });
}
