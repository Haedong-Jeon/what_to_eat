import 'package:what_to_eat/data/model/store/store_model.dart';
import 'package:what_to_eat/data/repository/store_repo/store_repository_impl.dart';
import 'package:what_to_eat/domain/repository/store_repo/store_repository.dart';

class GetRandomStore {
  final StoreRepository _repository = StoreRepositoryImpl();

  Future<StoreModel> call() async {
    return await _repository.getRandomStore();
  }
}
