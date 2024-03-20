import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:mobx_class/model/article_model.dart';
import 'package:mobx_class/presentation/articles/store/article_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
class ArticlesListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final articleStore = Provider.of<ArticleStore>(context);
    // TODO: implement build
  return Observer(builder: (BuildContext context) => Flexible(
        child:ListView.builder(
    itemCount: articleStore.articles.length,
    itemBuilder:(_,index){
      ArticleModel articleModel = articleStore.articles[index];
      return Card(
        child:Slidable(
          endActionPane: ActionPane(
            motion: const ScrollMotion(),
            children: [
              SlidableAction(onPressed: (_){
                articleStore.deleteArticle(articleModel);
              },
              backgroundColor: Colors.redAccent,
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: "Delet",
              ),
              SlidableAction(onPressed: (_){
                articleStore.addCurrent(articleModel);
              },
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
                icon: Icons.edit,
                label: "Edit",
              )
            ],
          ),
          child: ListTile(
            title: Text(articleModel.title),
            subtitle: Text(articleModel.article),
          ),
        )
      );
    })));
  }

}