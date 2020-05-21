import 'package:flutter/material.dart';
import 'package:teste/widgets/commons/nav.dart';
import 'package:teste/widgets/pages/detail_page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  bool gridMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("App"),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.list),
                onPressed: () => setState(() => gridMode = false)),
            IconButton(
                icon: Icon(Icons.grid_on),
                onPressed: () => setState(() => gridMode = true))
          ],
        ),
        body: _body());
  }

  _body() {
    return Container(
        color: Colors.redAccent, child: gridMode ? _imageGrid() : _imageList());
  }

  arrayToShow() {
    return [
      _stack(
        _img("img-1.jpg"),
        "Imagem 01",
      ),
      _stack(
        _img("img-2.jpg"),
        "Imagem 02",
      ),
      _stack(
        _img("img-3.jpg"),
        "Imagem 03",
      ),
      _stack(
        _img("img-4.jpg"),
        "Imagem 04",
      ),
      _stack(
        _img("img-5.jpg"),
        "Imagem 05",
      ),
      _stack(
        _img("img-1.jpg"),
        "Imagem 01",
      ),
      _stack(
        _img("img-2.jpg"),
        "Imagem 02",
      ),
      _stack(
        _img("img-3.jpg"),
        "Imagem 03",
      ),
      _stack(
        _img("img-4.jpg"),
        "Imagem 04",
      ),
      _stack(
        _img("img-5.jpg"),
        "Imagem 05",
      ),
    ];
  }

  final objectArray = [
    Detail("Imagem 01", "img-1.jpg"),
    Detail("Imagem 02", "img-2.jpg"),
    Detail("Imagem 03", "img-3.jpg"),
    Detail("Imagem 04", "img-4.jpg"),
    Detail("Imagem 05", "img-5.jpg"),
  ];

  _imageList() {
    return ListView.builder(
      itemCount: arrayToShow().length,
      itemExtent: 350,
      itemBuilder: (context, index) => GestureDetector(
        child: arrayToShow()[index],
        onTap: () => push(context, DetailPage(objectArray[index])),
      ),
    );
  }

  _imageGrid() {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: arrayToShow().length,
      itemBuilder: (context, index) => Container(
        child: GestureDetector(
          child: arrayToShow()[index],
          onTap: () => push(context, DetailPage(objectArray[index])),
        ),
      ),
    );
  }

  _stack(Widget img, String text) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(child: img),
        Container(
          margin: EdgeInsets.all(12),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(color: Colors.black45),
          child: Text(text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              )),
        )
      ],
    );
  }

  _img(path) {
    return Image.asset(
      "assets/img/$path",
      fit: BoxFit.cover,
    );
  }
}

class Detail {
  final String text;
  final String image;

  Detail(this.text, this.image);
}
