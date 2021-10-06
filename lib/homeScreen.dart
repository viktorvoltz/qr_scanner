import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:qr/scanScreen.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('QR Code Scanner & Generator'),
        ),
        body: Center(
            child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      child: ElevatedButton(
                        child: const Text('SCAN QR CODE', style: TextStyle(color: Colors.white),),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ScanScreen()),
                            );
                          },
                      ),
                    ),
                   Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      child: ElevatedButton(
                         child: const Text('GENERATE QR CODE', style: TextStyle(color: Colors.white),),
                          onPressed: () {
                           /* Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => GenerateScreen()),
                            ); */
                          },
                         
                      ),
                    ),
                ],
              )
          ),
        );
  }
}
