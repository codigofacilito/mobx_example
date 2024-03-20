// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ArticleStore on _ArticleStore, Store {
  late final _$articlesAtom =
      Atom(name: '_ArticleStore.articles', context: context);

  @override
  ObservableList<ArticleModel> get articles {
    _$articlesAtom.reportRead();
    return super.articles;
  }

  @override
  set articles(ObservableList<ArticleModel> value) {
    _$articlesAtom.reportWrite(value, super.articles, () {
      super.articles = value;
    });
  }

  late final _$currentArticleAtom =
      Atom(name: '_ArticleStore.currentArticle', context: context);

  @override
  Observable<ArticleModel> get currentArticle {
    _$currentArticleAtom.reportRead();
    return super.currentArticle;
  }

  @override
  set currentArticle(Observable<ArticleModel> value) {
    _$currentArticleAtom.reportWrite(value, super.currentArticle, () {
      super.currentArticle = value;
    });
  }

  late final _$_ArticleStoreActionController =
      ActionController(name: '_ArticleStore', context: context);

  @override
  void addArticle(ArticleModel articleModel) {
    final _$actionInfo = _$_ArticleStoreActionController.startAction(
        name: '_ArticleStore.addArticle');
    try {
      return super.addArticle(articleModel);
    } finally {
      _$_ArticleStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void update(ArticleModel articleModel) {
    final _$actionInfo = _$_ArticleStoreActionController.startAction(
        name: '_ArticleStore.update');
    try {
      return super.update(articleModel);
    } finally {
      _$_ArticleStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addCurrent(ArticleModel articleModel) {
    final _$actionInfo = _$_ArticleStoreActionController.startAction(
        name: '_ArticleStore.addCurrent');
    try {
      return super.addCurrent(articleModel);
    } finally {
      _$_ArticleStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
articles: ${articles},
currentArticle: ${currentArticle}
    ''';
  }
}
