import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_class/model/article_model.dart';
import 'package:mobx_class/presentation/articles/store/article_store.dart';
import 'package:provider/provider.dart';

class AddArticle extends StatelessWidget {
  final _titleCtrl = TextEditingController();
  final _articleCtrl = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final articleStore = Provider.of<ArticleStore>(context);
    // TODO: implement build
    return Observer(builder:(_)=>Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Titulo"),
          TextFormField(
            controller: _titleCtrl..text=articleStore.currentArticle.value.title,
          ),
          Text("Articulo"),
          TextFormField(
            controller: _articleCtrl..text=articleStore.currentArticle.value.article,
            maxLines: 2,
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if(articleStore.currentArticle.value.id>0){
                    ArticleModel articleUpdate = ArticleModel(
                      id: articleStore.currentArticle.value.id,
                      title: _titleCtrl.text,
                      article: _articleCtrl.text
                    );
                    articleStore.update(articleUpdate);
                  }else{
                    articleStore.addArticle(ArticleModel(
                        id: Random().nextInt(100),
                        title: _titleCtrl.text,
                        article: _articleCtrl.text
                    ));
                  }
                  articleStore.addCurrent(ArticleModel());
                  _formKey.currentState!.reset();
                  FocusScope.of(context).unfocus();
                },
                child: Text("Publicar"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
              ))
        ],
      ),
    ));
  }
}
