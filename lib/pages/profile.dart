import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  Widget textfield({@required hintText}) {
    return Material(
      elevation: 0.5,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            letterSpacing: 2,
            color: Colors.black54,
            fontWeight: FontWeight.w600,
          ),
          fillColor: Colors.white30,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 450,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    textfield(hintText: 'eyhluh'),
                    textfield(hintText: 'ellavilleza22@gmail.com'),
                    textfield(hintText: 'Password'),
                    textfield(hintText: 'Confirm password'),
                    Container(
                      height: 55,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                        ),
                        child: Center(
                          child: Text(
                            "Update",
                            style: TextStyle(fontSize: 23, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 35,
                    letterSpacing: 1.5,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width / 2,
                height: 250,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 5),
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage(
                      'assets/481218978_930399252634529_1071216926976166737_n.jpg',
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 270, left: 184),
            child: CircleAvatar(
              backgroundColor: Colors.black54,
              child: IconButton(
                icon: Icon(Icons.edit, color: Colors.white),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Color(0xff555555);
    Path path =
        Path()
          ..relativeLineTo(0, 150)
          ..quadraticBezierTo(size.width / 2, 225, size.width, 150)
          ..relativeLineTo(0, -150)
          ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
