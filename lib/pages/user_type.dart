import 'package:flutter/material.dart';

class UserType extends StatefulWidget {
  const UserType({Key? key}) : super(key: key);

  @override
  State<UserType> createState() => _UserTypeState();
}

class _UserTypeState extends State<UserType> {
  String user_type = 'customer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffbfbfb),
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
              Text(
                "Sign Up As",
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
                  "We have tailor-made services and information to suit your needs. Choose your profile to access them.",
                  style: TextStyle(
                    color: Color(0xff22292e),
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Divider(
                color: Color.fromARGB(255, 165, 165, 168),
                height: 10.0,
              ),
              SizedBox(height: 15.0),
              GestureDetector(
                onTap: () => setState(() => user_type = 'customer'),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        userIcon(),
                        SizedBox(width: 10.0),
                        Text(
                          'Customer',
                          style: TextStyle(
                            color: Color(0xff1f2933),
                            fontFamily: "Poppins",
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 18,
                      height: 18,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xfffc865a),
                          width: 1,
                        ),
                        color: Color(0xfffbfbfb),
                      ),
                      child: Center(
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: user_type == 'customer' ? Color(0xfffc865a) : Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              GestureDetector(
                onTap: () => setState(() => user_type = 'vendor'),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        userIcon(),
                        SizedBox(width: 10.0),
                        Text(
                          'Seller(Farmer/Agrovet)',
                          style: TextStyle(
                            color: Color(0xff1f2933),
                            fontFamily: "Poppins",
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 18,
                      height: 18,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xfffc865a),
                          width: 1,
                        ),
                        color: Color(0xfffbfbfb),
                      ),
                      child: Center(
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: user_type == 'vendor' ? Color(0xfffc865a) : Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
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
                  'Next',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget userIcon() {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Color(0xff17c690),
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Center(
        child: Icon(
          Icons.account_circle_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
