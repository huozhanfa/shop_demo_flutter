import 'package:baixing/config/servcie_url.dart';
import 'package:baixing/model/search_model.dart';
import 'package:baixing/utils/dio/safeRequest.dart';
import 'package:dio/dio.dart';

final tokenData = {'lon': '115.02932', 'lat': '35.76189'};

// 获取首页主题内容
Future getHomePageContent() async {
  print('开始获取首页数据......');
  return safeRequest(
    servicePath['homePageContent'],
    data: tokenData,
    options: Options(method: 'POST'),
  );
}

// 获取火爆专区方法
Future getHomePageBeloContent(Map page) async {
  print('获取火爆专区数据......');
  return safeRequest(
    servicePath['homePageBelowConten'],
    data: {...tokenData, ...page},
    options: Options(method: 'POST'),
  );
}

// 获取分类方法
Future getCategory() async {
  print('获取分类数据......');
  return safeRequest(
    servicePath['getCategory'],
    data: tokenData,
    options: Options(method: 'POST'),
  );
}

// 获取分类列表信息
Future getMallGoods(Map params) async {
  print('获取分类列表......');
  return safeRequest(
    servicePath['getMallGoods'],
    data: {...tokenData, ...params},
    options: Options(method: 'POST'),
  );
}

// 获取商品详情
Future getGoodDetailById(Map params) async {
  print('获取详情页......');
  return safeRequest(
    servicePath['getGoodDetailById'],
    data: {...tokenData, ...params},
    options: Options(method: 'POST'),
  );
}

// 搜索旅游数据
Future<SearchModel> getSearchCtrip(String searchKey) async {
  final data = await safeRequest(
    servicePath['searchUrl'] + searchKey,
  );
  print('获取搜索数据......');

  return SearchModel.fromJson(data);
}
