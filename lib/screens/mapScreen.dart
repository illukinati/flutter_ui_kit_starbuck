import 'package:flutter/material.dart';
import 'package:flutter_ui_kit_starbuck/components/itemCardIcon.dart';
import 'package:map_view/map_view.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => new _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static var apiKey = 'AIzaSyDrHKl8IxB4cGXIoELXQOzzZwiH1xtsRf4';
  MapView mapView = new MapView();
  CameraPosition cameraPosition;
  var staticMapProvider = new StaticMapProvider(apiKey);
  Uri staticMapUri;
  List<Marker> markers = <Marker>[
    new Marker("1", "Star buck 1", 35.7325623, 139.7403808, color: Colors.teal),
    new Marker("2", "Star buck 2", 35.7322494, 139.7377059, color: Colors.teal),
  ];

  showMap() {
    mapView.show(new MapOptions(
        mapViewType: MapViewType.normal,
        initialCameraPosition:
            new CameraPosition(new Location(35.740655, 139.7334568), 15.0),
        showUserLocation: true,
        title: "Recent Location"));

    mapView.onMapReady.listen((_) {
      mapView.setMarkers(markers);
      mapView.zoomToFit(padding: 100);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cameraPosition =
        new CameraPosition(new Location(35.7322433, 139.7381202), 2.0);
    staticMapUri = staticMapProvider.getStaticUri(
        new Location(35.7322433, 139.7381202), 15,
        height: 900, width: 900, mapType: StaticMapViewType.roadmap);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE2C287),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              InkWell(
                child: Center(
                  child: Image.network(staticMapUri.toString()),
                ),
                onTap: showMap,
              ),
              Container(
                child: Card(
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        new ItemCardIcon(
                          icon: Icons.store,
                          title: 'Starbuck 1',
                          desc:
                              '1 Chome-23 Takinogawa, Kita-ku, Tōkyō-to 114-0023',
                        ),
                        Container(
                          height: 1.0,
                          color: Colors.grey[200],
                        ),
                        new ItemCardIcon(
                          icon: Icons.store,
                          title: 'Starbuck 2',
                          desc:
                              '1 Chome-23 Takinogawla, Kita-ku, Tōkyō-to 114-0023',
                        ),
                        Container(
                          height: 1.0,
                          color: Colors.grey[200],
                        ),
                        new ItemCardIcon(
                          icon: Icons.store,
                          title: 'Starbuck 3',
                          desc:
                              '1 Chome-23 Takinogawa, Kita-ku, Tōkyō-to 114-0023',
                        ),
                        Container(
                          height: 1.0,
                          color: Colors.grey[200],
                        ),
                        new ItemCardIcon(
                          icon: Icons.store,
                          title: 'Starbuck 4',
                          desc:
                              '1 Chome-23 Takinogawa, Kita-ku, Tōkyō-to 114-0023',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
