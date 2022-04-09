import 'package:flutter/material.dart';

class NewAddress extends StatefulWidget {
  const NewAddress({Key? key}) : super(key: key);

  @override
  State<NewAddress> createState() => _NewAddressState();
}

class _NewAddressState extends State<NewAddress> {
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
        backgroundColor: Color(0xfffbfbfb),
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30.0),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Text(
                          "Add New Address",
                          style: TextStyle(
                            color: Color(0xff1f2933),
                            fontSize: 24,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 15.0),
                          SizedBox(
                            width: 323,
                            child: Text(
                              "For faster delivery timelines, \nshop from farms near you.",
                              style: TextStyle(
                                color: Color(0xff22292e),
                                fontFamily: "Poppins",
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context, '/location_map'
                          );
                        },
                        color: Color.fromARGB(255, 250, 211, 175),
                        iconSize: 20.0,
                        icon: Icon(
                          Icons.map_outlined,
                          color: Color(0xfffc865a),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
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
                    hintText: 'Enter Address',
                    hintStyle: TextStyle(
                      color: Color(0xffaeaeb2),
                      fontFamily: "Poppins",
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Divider(
                  color: Color.fromARGB(255, 165, 165, 168),
                  height: 10.0,
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Color(0xff17c690),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.location_on_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Home",
                            style: TextStyle(
                              color: Color(0xff22292e),
                              fontSize: 17,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            child: Text(
                              "Nyayo Estate, Nairobi.",
                              style: TextStyle(
                                color: Color(0xff8a8a8e),
                                fontSize: 14,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context, '/home');
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff17c690),
                  fixedSize: const Size(280, 40),
                  shadowColor: Color(0xff17c690),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                child: Text(
                  'Ok',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
