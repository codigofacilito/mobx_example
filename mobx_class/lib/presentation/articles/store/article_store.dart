import 'package:mobx/mobx.dart';

import '../../../model/article_model.dart';

part 'article_store.g.dart';

class ArticleStore = _ArticleStore with _$ArticleStore;

abstract class _ArticleStore with Store {

  @observable
  ObservableList<ArticleModel> articles = ObservableList<ArticleModel>();

  @observable
  Observable<ArticleModel> currentArticle = Observable<ArticleModel>(ArticleModel());

  @action
  void addArticle(ArticleModel articleModel){
    articles.add(articleModel);
  }

  void deleteArticle(ArticleModel articleModel){
    articles.removeWhere((article) => article == articleModel);
  }

  @action
  void update(ArticleModel articleModel){
    articles[articles.indexWhere((article) => article.id==articleModel.id)] = articleModel;
  }

  @action
  void addCurrent(ArticleModel articleModel){
    currentArticle.value = articleModel;
  }
}