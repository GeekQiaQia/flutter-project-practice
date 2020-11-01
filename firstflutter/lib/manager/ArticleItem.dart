import 'package:flutter/material.dart';
import 'package:firstflutter/manager/Article.dart';

class ArticleItem extends StatelessWidget {
  final Article model;

  ArticleItem(this.model);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.all(5),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(model.logo),
                                fit: BoxFit.cover)),
                      ),
                      Text(
                        model.location,
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            model.type,
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Text(
                            model.size,
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Text(
                            model.employee,
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '热招：',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Text(
                            model.hot,
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '等：',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Text(
                            model.count,
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Text(
                            '个职位',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.arrow_forward_rounded,
                              size: 20, color: Colors.grey),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
