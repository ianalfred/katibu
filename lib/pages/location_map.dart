import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationMap extends StatefulWidget {
  const LocationMap({ Key? key }) : super(key: key);

  @override
  State<LocationMap> createState() => _LocationMapState();
}

class _LocationMapState extends State<LocationMap> {

  static const _initialCameraPosition = CameraPosition(
    target: LatLng(-1.286389, 36.817223),
    zoom: 11.5,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffbfbfb),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.chevron_left),
        ),
        iconTheme: IconThemeData(
          color: Color(0xff1f2933),
        ),
        title: Text(
            "Your Addresses",
            style: TextStyle(
              color: Color(0xff22292e),
              fontSize: 17,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
            ),
          ),
        centerTitle: true,
        backgroundColor: Color(0xfffbfbfb),
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
              child: GoogleMap(
                initialCameraPosition: _initialCameraPosition,
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: double.infinity,
                  height: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24), bottomLeft: Radius.circular(0), bottomRight: Radius.circular(0), ),
                    border: Border.all(color: Color(0xffedecff), width: 1, ),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.fromLTRB(15, 25, 15, 56),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nyayo Estate",
                        style: TextStyle(
                          color: Color(0xff22292e),
                          fontSize: 24,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Fedha Road, Nairobi, Kenya",
                        style: TextStyle(
                          color: Color(0xff8a8a8e),
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffefeff0),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: Color(0xffefeff0),
                              width: 0,
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xffaeaeb2),
                            size: 20.0,
                          ),
                          hintText: 'Write down building, office etc',
                          hintStyle: TextStyle(
                            color: Color(0xffaeaeb2),
                            fontFamily: "Poppins",
                            fontSize: 15,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, '/new_address');
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff17c690),
                              fixedSize: const Size(300, 40),
                              shadowColor: Color(0xff17c690),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            child: Text(
                              'Add Address',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}