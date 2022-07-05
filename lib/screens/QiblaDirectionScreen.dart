import 'dart:async';
import 'dart:math' show pi;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class QiblaCompass extends StatefulWidget {
  const QiblaCompass({Key? key}) : super(key: key);

  @override
  _QiblaCompassState createState() => _QiblaCompassState();
}

class _QiblaCompassState extends State<QiblaCompass> {
  final _locationStreamController =
      StreamController<LocationStatus>.broadcast();

  get stream => _locationStreamController.stream;

  @override
  void initState() {
    _checkLocationStatus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color(0xff274833),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        child: StreamBuilder(
          stream: stream,
          builder: (context, AsyncSnapshot<LocationStatus> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
              return CupertinoActivityIndicator();
            if (snapshot.data!.enabled == true) {
              switch (snapshot.data!.status) {
                case LocationPermission.always:
                case LocationPermission.whileInUse:
                  return QiblahCompassWidget();
                default:
                  return Container();
              }
            }
          else return Text("Please Turn On Location To Find Qibla Direction!", style: TextStyle(color: Color(0xffD7B13D)),);
          },
        ),
      ),
    );
  }

  Future<void> _checkLocationStatus() async {
    final locationStatus = await FlutterQiblah.checkLocationStatus();
    if (locationStatus.enabled &&
        locationStatus.status == LocationPermission.denied) {
      await FlutterQiblah.requestPermissions();
      final s = await FlutterQiblah.checkLocationStatus();
      _locationStreamController.sink.add(s);
    } else
      _locationStreamController.sink.add(locationStatus);
  }

  @override
  void dispose() {
    super.dispose();
    _locationStreamController.close();
    FlutterQiblah().dispose();
  }
}

class QiblahCompassWidget extends StatelessWidget {
  final _kaabaSvg = SvgPicture.asset('assets/4.svg');

  QiblahCompassWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _platformBrightness = Theme.of(context).brightness;
    return SafeArea(
      child: Column(
        children: [
             Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: IconButton(onPressed: (){
                       Get.back();
                      }, icon: Icon(Icons.arrow_back_ios_new_outlined, size: 30,color: Color(0xffD7B13D),)),
                    ),
                  ],
                ),
                
          Expanded(
            child: StreamBuilder(
              stream: FlutterQiblah.qiblahStream,
              builder: (_, AsyncSnapshot<QiblahDirection> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting)
                  return CupertinoActivityIndicator();
          
                final qiblahDirection = snapshot.data;
                var _angle = ((qiblahDirection!.qiblah) * (pi / 180) * -1);
          
              // if (_angle < 5 && _angle > -5) print('IN RANGE');
          
                return Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Transform.rotate(
                      angle: _angle,
                      child: SvgPicture.asset('assets/5.svg', // compass
                          color: _platformBrightness == Brightness.dark
                              ? Colors.yellow
                              : Color(0xffD7B13D),),
                    ),
                    _kaabaSvg,
                    SvgPicture.asset('assets/3.svg', //needle
                        color: _platformBrightness == Brightness.dark
                            ? Colors.yellow
                            : Color(0xffD7B13D),),
                    // Align(
                    //   alignment: Alignment.bottomCenter,
                    //   child: Text(
                    //     "Align both arrow head\nDo not put device close to metal object.\nCalibrate the compass eveytime you use it.",
                    //     textAlign: TextAlign.center,
                    //   ),
                    // )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}