
import 'package:flutter_arch/model/article.dart';
import 'package:flutter_arch/model/tree.dart';
import 'package:flutter_arch/provider/view_state_list_model.dart';
import 'package:flutter_arch/provider/view_state_refresh_list_model.dart';
import 'package:flutter_arch/service/wan_android_repository.dart';

class ProjectCategoryModel extends ViewStateListModel<Tree> {
  @override
  Future<List<Tree>> loadData() async {
    return await WanAndroidRepository.fetchProjectCategories();
  }
}

class ProjectListModel extends ViewStateRefreshListModel<Article> {
  @override
  Future<List<Article>> loadData({int pageNum}) async {
    return await WanAndroidRepository.fetchArticles(pageNum, cid: 294);
  }

  // @override
  // onCompleted(List data) {
  //   GlobalFavouriteStateModel.refresh(data);
  // }
}
