
import '../modules/total_sent/model/filter_total_sent_model.dart';

abstract class IFilterTotalSent {
  Future<List<FilterTotalSentModel>> findTotalSentData();
}
