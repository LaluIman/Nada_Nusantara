// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:math';
import '../model/instrument_model.dart';
import 'detail_screen.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F0EA),
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Color(0xFFF4F0EA),
        title: Text('Nada Nusantara', style: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        )),
      ),
      body: LayoutBuilder(builder: (context, BoxConstraints constraints){
        if (constraints.maxWidth <= 600) {
          return MobileView();
        } else if (constraints.maxWidth <= 800) {
          return WebView(gridCount: 4);
        } else {
          return WebView(gridCount: 6);
        }
      }),
    );
  }
}

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(height: 20), 

          Padding(
            padding: const EdgeInsets.all(6.0),
            child: SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  final TraditionalInstrument instrument = traditionalInstrumentList[Random().nextInt(traditionalInstrumentList.length)];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return DetailScreen(instrument: instrument,);
                      }));
                    },
                    child: Container(
                      width: 150,
                      margin: EdgeInsetsDirectional.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFFAFAFA)
                              ),
                              child: Hero(
                                tag: index,
                                child: Image.asset(
                                  instrument.imageAsset,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 1.0),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  instrument.name,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  instrument.origin,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
            ),
          ),
          
          SizedBox(height: 30), 
          
          Container(
            color: Colors.white,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 30, left: 30, bottom: 10, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Recent Instruments", style: TextStyle(
                          fontSize: 20, 
                          fontWeight: FontWeight.w600
                        ),),
                        Text("See more")
                      ],
                    ),
                  ),
                  Divider(endIndent: 0, color: Colors.black.withOpacity(0.3),)
                ],
              ),
            ),
          ),


          ListView.builder(
            primary: false,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: traditionalInstrumentList.length,
            itemBuilder: (context, index) {
              final TraditionalInstrument instrument = traditionalInstrumentList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen(instrument: instrument);
                  }));
                },
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Color(0xFFFAFAFA)
                                ),
                                child: Image.asset(instrument.imageAsset,
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover
                              )),
                              SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      instrument.name,
                                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      children: [
                                        Text(
                                          instrument.origin,
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        SizedBox(width: 8),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 16),
                              Icon(Icons.chevron_right_rounded),
                            ],
                          ),
                        ),
                        Divider(color: Colors.black.withOpacity(0.3),)
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}



class WebView extends StatelessWidget {
  const WebView({super.key, required this.gridCount});

  final int gridCount;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: gridCount,
      children: List.generate(traditionalInstrumentList.length, (index) {
        final TraditionalInstrument instrument = traditionalInstrumentList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(instrument: instrument,);
            }));
          },
          child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: double.infinity,
                margin: EdgeInsetsDirectional.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFFAFAFA)
                          ),
                          child: Hero(
                            tag: index,
                            child: Image.asset(
                              instrument.imageAsset,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 1.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            instrument.name,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            instrument.origin,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      )
    );
  }
}




