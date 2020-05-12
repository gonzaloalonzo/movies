import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';


class CardSwiper extends StatelessWidget {
  

  final List<dynamic> peliculas;

  CardSwiper({ @required this.peliculas });

  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top:10.0),
          child: Swiper(
            layout:SwiperLayout.STACK,
            itemWidth: _screenSize.width * 0.7,//width del 70% de la pantalla se plica a las tarjetas y no al contenedor
            itemHeight: _screenSize.height * 0.5,//height 50% de la pantalla  se plica a las tarjetas y no al contenedor
            itemBuilder: (BuildContext context, int index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child:Image.network("http://via.placeholder.com/350x150",
                fit: BoxFit.cover)
              );
              
          },
            itemCount: peliculas.length,
            //pagination: SwiperPagination(),// puntos que muestra al final de la imagen
            //control: SwiperControl(),// flechas que permiten el swip.
        ),
        );
  }
}