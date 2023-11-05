import 'package:firstporject/components/toolbar.dart';
import 'package:firstporject/config/app_icons.dart';
import 'package:firstporject/config/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/svg.dart';
import 'package:latlong2/latlong.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(title: AppStrings.nearby),
      body: FlutterMap(
        options: MapOptions(center: LatLng(40.416775, -3.703790), zoom: 10),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.ces.flutter',
            // Plenty of other options available!
          ),
          MarkerLayer(
            markers: [
              Marker(
                width: 100,
                height: 50,
                point: LatLng(40.416775, -3.703790),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(14))),
                      child: Text(
                        'Username',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SvgPicture.asset(
                      AppIcons.icLocation,
                      colorFilter:
                          ColorFilter.mode(Colors.black, BlendMode.srcIn),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
