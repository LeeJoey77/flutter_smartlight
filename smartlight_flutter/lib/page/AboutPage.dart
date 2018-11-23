import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class AboutPage extends StatelessWidget {
  String title;
  AboutPage({Key key, this.title}) : super(key: key);

  final bannerList = [
    'resource/banner1.jpg',
    'resource/banner2.jpg',
    'resource/banner3.jpeg',
    'resource/banner4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return new Image.asset(
                    bannerList[index],
                    fit: BoxFit.fill,
                  );
                },
                itemCount: bannerList.length,
                containerHeight: 220,
                itemHeight: 220,
                pagination: new SwiperPagination(),
                control: new SwiperControl(),
                autoplay: true,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(10),
                child: Text('一曲新词酒一杯，去年天气旧亭台。夕阳西下几时回？\n无可奈何花落去，似曾相识燕归来。小园香径独徘徊。'),
              ),
            )
          ],
        ));
  }
}
