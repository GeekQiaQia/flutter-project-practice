import 'package:flutter/material.dart';
import 'package:firstflutter/manager/Article.dart';

class ArticleItem extends StatelessWidget {
  final Article model;

  ArticleItem(this.model);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Card(
          child: new Column(
        children: [
          new Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 10.0, bottom: 0),
                  child: Image.network(model.logo, width: 50.0, height: 50.0)),
              Padding(
                  padding: EdgeInsets.only(
                      top: 5.0, right: 5.0, bottom: 5.0, left: 0),
                  child: Text(
                      model.location.substring(
                          0,
                          model.location.length > 6
                              ? 6
                              : model.location.length),
                      style: TextStyle(fontSize: 13, color: Colors.grey))),
              Padding(
                  padding: EdgeInsets.only(
                      top: 5.0, right: 10.0, bottom: 5.0, left: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "|" + model.type,
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "|" + model.size,
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "|" + model.employee,
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ))
            ],
          ),
          Divider(),
          new Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(
                      top: 5.0, right: 5.0, bottom: 15.0, left: 15.0),
                  child: new Text(
                      "热招:" + model.hot + "等" + model.count + "多个职位",
                      style:
                          new TextStyle(fontSize: 13.0, color: Colors.grey))),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  new Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Icon(Icons.chevron_right, color: Colors.grey),
                  ),
                ],
              ))
            ],
          )
        ],
      )),
    );
  }
}
