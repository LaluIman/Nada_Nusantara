// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_collection_literals, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_const_constructors_in_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import '../model/instrument_model.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.instrument});

  final TraditionalInstrument instrument;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F0EA),
      appBar: AppBar(
          backgroundColor: Color(0xFFF4F0EA),
          leading: SizedBox(
            child: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back), 
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(instrument.name, style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                decoration: TextDecoration.underline
              ),),
            )
          ],
        ),
      body: LayoutBuilder(builder: (context, BoxConstraints constraints){
        if (constraints.maxWidth <= 600) {
          return MobileViewDetail(instrument: instrument);
        } else {
          return WebViewDetail(instrument: instrument,);
        }
      }),
    );
  }
}

class MobileViewDetail extends StatelessWidget {
  const MobileViewDetail({
    super.key,
    required this.instrument,
  });

  final TraditionalInstrument instrument;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(instrument.name, style: TextStyle(
                        fontSize: 40, fontWeight: FontWeight.w600
                      ),),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(instrument.origin),
                              Text(instrument.category)
                            ],
                          ),
                          
                          SizedBox(
                            width: 10,
                          ),

                           SizedBox(
                            width: 1,
                            height: 40,
                            child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.black
                            ),),
                          )
                        ],
                      ),
                     
                    ],
                  ),
                  SizedBox(height: 30,),
                  Center(
                    child: Image.asset(instrument.imageAsset, 
                    width: 300, 
                    height: 300,
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        PlayButton(instrument: instrument),
                        SizedBox(height: 20,),
                        Text("Deskripisi", style: TextStyle(
                          fontSize: 30, 
                          fontWeight: FontWeight.w600
                        ),),
                        Divider(),
                        SizedBox(height: 20,),
                        Text(instrument.description),
                        SizedBox(height: 20,),
                        Text("History", style: TextStyle(
                          fontSize: 30, 
                          fontWeight: FontWeight.w600
                        ),),
                        Divider(),
                        SizedBox(height: 20,),
                        Text(instrument.history),
                        SizedBox(height: 50,),
                      ],),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WebViewDetail extends StatelessWidget {
  const WebViewDetail({super.key, required this.instrument});

  final TraditionalInstrument instrument;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFB9AD9F).withOpacity(0.4),
                              borderRadius: BorderRadius.circular(30)
                            ),
                            width: 500,
                            height: 500,
                            child: Image.asset(instrument.imageAsset),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 30),
                            child: SizedBox(
                              height: 60,
                              child: PlayButton(instrument: instrument
                              )),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 32),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  instrument.name,
                                  style: const TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                  Text(instrument.origin),
                                  Text(instrument.category)
                                ],)
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Description", style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600
                                  ),),
                                  Divider(),
                                  SizedBox(height: 20),
                                  Text(
                                    instrument.description,
                                    textAlign: TextAlign.justify,
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  SizedBox(height:40),
                                  Text("History", style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600
                                  ),),
                                  Divider(),
                                  SizedBox(height: 20),
                                  Text(
                                    instrument.history,
                                    textAlign: TextAlign.justify,
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
  }
}


class PlayButton extends StatelessWidget {
  final TraditionalInstrument instrument;

  const PlayButton({super.key, required this.instrument});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: () async {
          final player=AudioPlayer();
          await player.play(AssetSource(instrument.sound));
          },
        icon: Icon(Icons.volume_up, size: 20),
        label: Text(
          'Mainkan suara',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          padding: EdgeInsets.symmetric(vertical: 15),
        ),
      ),
    );
  }
}

class CarouselBro extends StatefulWidget {
  const CarouselBro({super.key, required this.instrument});


final TraditionalInstrument instrument;


  @override
  State<CarouselBro> createState() => _CarouselBroState();
}

class _CarouselBroState extends State<CarouselBro> {

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CarouselSlider(
           items: widget.instrument.imageDetail.map((image) => Container(
            child: ClipRRect(
              child: Image.asset(image,  fit: BoxFit.cover, width: 1000, height: 500),
              borderRadius: BorderRadius.circular(20),
            ),
          )).toList(),
            options: CarouselOptions(
              initialPage: 0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 5),
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
              enableInfiniteScroll: false,
              autoPlayCurve: Curves.fastOutSlowIn,
              onPageChanged: (value, _){
                setState(() {
                  _currentPage = value;
                });
              }
            )
           ),
          buildCarouselIndicators()
        ],
      ),
    );
  }
  
  buildCarouselIndicators() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for(int i = 0; i < widget.instrument.imageDetail.length; i++)
            Container(
              decoration: BoxDecoration(
                color: i == _currentPage ? Color(0xFFFFC400) : Colors.grey,
                shape: BoxShape.circle
              ),
              height: i == _currentPage ? 8 : 5,
              width: i == _currentPage ? 8 : 5,
              margin: EdgeInsets.all(5),
            )
          ],
        ),
      ),
    );
  }
}
