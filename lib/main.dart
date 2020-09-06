import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundColor: Colors.red,
                radius: 70,
                backgroundImage: AssetImage("images/me.JPG"),
              ),
              Text(
                "Oleksandr Kostiuk",
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "SOFTWARE DEVELOPER",
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.red.shade300,
                  fontSize: 15,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 20,
                width: 250,
                child: Divider(
                  color: Colors.red,
                ),
              ),
              Card(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  color: Colors.blue[500],
                  child: ListTile(
                    visualDensity: VisualDensity.comfortable,
                    leading: Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    title: Text(
                      "+380665886297",
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  )),
              Card(
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                color: Colors.red[500],
                child: ListTile(
                  visualDensity: VisualDensity.comfortable,
                  leading: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  title: Text(
                    "olexandr.kostiuk@gmail.com",
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
                child: QrImage(
                  data:
                      'https://www.linkedin.com/in/olexandr-kostiuk-b9bb05b6/',
                  version: QrVersions.auto,
                  backgroundColor: Colors.white,
                  size: 170,
                  foregroundColor: Colors.black,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 100,
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: const Color(0xff7c94b6),
                        gradient: new LinearGradient(
                          colors: [
                            Colors.red[900],
                            Colors.red[500],
                            Colors.blue[900],
                            Colors.blue[500],
                            Colors.grey[800],
                            Colors.grey[900],
                            Colors.black,
                            Colors.white,
                          ],
                          begin: Alignment.bottomLeft,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
