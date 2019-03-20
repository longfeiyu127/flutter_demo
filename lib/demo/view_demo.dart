import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridViewExtentDemo();
  }
}

class GridViewExtentDemo extends StatelessWidget {

  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          'Item $index',
          style: TextStyle(
              fontSize: 18.0,
              color: Colors.blue
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
      maxCrossAxisExtent: 150.0,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
//      scrollDirection: Axis.horizontal,
      children: _buildTiles(100),
    );
  }
}

class GridViewCountDemo extends StatelessWidget {

  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          'Item $index',
          style: TextStyle(
              fontSize: 18.0,
              color: Colors.blue
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      scrollDirection: Axis.horizontal,
      children: _buildTiles(100),
    );
  }
}

class PageViewBuildDemo extends StatelessWidget {
  Widget _itemBuilder(BuildContext content, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
              Text(
                  posts[index].author
              )
            ],
          ),
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _itemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
//      reverse: true,
//      scrollDirection: Axis.vertical,
//      onPageChanged: (index) => debugPrint('page: $index'),
      controller: PageController(
        initialPage: 1,
        keepPage: false,
        viewportFraction: 0.85,
      ),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'ONE',
            style: TextStyle(
                fontSize: 32.0,
                color:Colors.white
            ),
          ),
        ),
        Container(
          color: Colors.blueAccent,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'Tow',
            style: TextStyle(
                fontSize: 32.0,
                color:Colors.white
            ),
          ),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'three',
            style: TextStyle(
                fontSize: 32.0,
                color:Colors.white
            ),
          ),
        ),
      ],
    );
  }
}