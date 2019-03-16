import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
//      color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage('https://www-di1.dev.cmrh.com/cms/static/img/09fcfafc2131763925b4bd113942a4ee.png'),
          alignment: Alignment.topCenter,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.indigoAccent[400].withOpacity(0.5), BlendMode.hardLight)
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white,),
//            color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              border: Border(
                top: BorderSide(
                  color: Colors.indigoAccent[100],
                  width: 3.0,
                  style: BorderStyle.solid
                ),
                bottom: BorderSide(
                    color: Colors.indigoAccent[100],
                    width: 3.0,
                    style: BorderStyle.solid
                ),
                left: BorderSide(
                    color: Colors.indigoAccent[100],
                    width: 3.0,
                    style: BorderStyle.solid
                ),
                right: BorderSide(
                    color: Colors.indigoAccent[100],
                    width: 3.0,
                    style: BorderStyle.solid
                ),
              ),
//              borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  offset: Offset(6.0, 7.0),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 25.0,
                  spreadRadius: -9.0
                )
              ],
              shape: BoxShape.circle,
              gradient: RadialGradient(colors: [
                Color.fromRGBO(7, 102, 255, 1.0),
                Color.fromRGBO(7, 28, 128, 1.0)
              ])
            ),
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
          text: 'nihao',
          style: TextStyle(
              color: Colors.deepOrangeAccent,
              fontSize: 20.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w100
          ),
          children: [
            TextSpan(
                text: '.net',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.blue,
                )
            )
          ]
      ),
    );
  }
}

class TextDemo extends StatelessWidget {

  final TextStyle _textStyle = TextStyle(
      fontSize: 16.0
  );

  final String _title = '标题';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      '$_title nihaonihaonihaonihaonihaonihaonihaonihaonihaonihaonihaonihaonihaonihaonihaonihaonihaonihaonihaoasdsas鞍山市第三款',
      textAlign: TextAlign.center,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}