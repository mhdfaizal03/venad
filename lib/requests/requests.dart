import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Requests {
  Widget mapContent(BuildContext context) {
    // String latitude;
    // String longuitude;
    // _getCurrentLocation().then((value) {
    //   latitude = '${value.latitude}';
    //   longuitude = '${value.longitude}';
    // });
    try {
      return FlutterMap(
        options: const MapOptions(
          initialCenter: LatLng(8.815330, 76.967880),
          initialZoom: 11,
          interactionOptions: InteractionOptions(
              flags: ~InteractiveFlag.doubleTapZoom,
              debugMultiFingerGestureWinner: true),
        ),
        children: [
          openStreetMap,
          const MarkerLayer(markers: [
            Marker(
                point: LatLng(8.815330, 76.967880),
                width: 40,
                height: 40,
                child: Icon(
                  Icons.location_pin,
                  color: Colors.red,
                ))
          ])
        ],
      );
    } catch (e) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
  }

  TileLayer get openStreetMap => TileLayer(
        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        userAgentPackageName: 'dev.fleaflet.flutter_map.example',
      );

  // Future<Position> _getCurrentLocation() async {
  //   bool isServiceEnabled = await Geolocator.isLocationServiceEnabled();
  //   if (!isServiceEnabled) {
  //     return Future.error('Loction Services is disabled');
  //   }
  //   LocationPermission permission = await Geolocator.checkPermission();
  //   if (permission == LocationPermission.denied) {
  //     permission = await Geolocator.checkPermission();
  //   }
  //   if (permission == LocationPermission.denied) {
  //     return Future.error('Location permissions are denined');
  //   }
  //   if (permission == LocationPermission.deniedForever) {
  //     return Future.error('Location Permissions are disabled forever,');
  //   }
  //   return await Geolocator.getCurrentPosition();
  // }
}

Future<bool> _checkInternetConnection() async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  return connectivityResult != ConnectivityResult.none;
}
