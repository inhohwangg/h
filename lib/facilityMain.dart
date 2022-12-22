import 'package:flutter/material.dart';
import 'package:test/facilityInfo.dart';
import 'package:test/mainpage.dart';

class FacilityMain extends StatelessWidget {
  const FacilityMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('시설물 지도'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return MainPage();
                  },
                ),
              );
            },
            icon: Icon(Icons.logout),
          ),
        ],
        // actions: [Icon(Icons.exit_to_app)],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(40),
            child: TextFormField(
              autofocus: false,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(180, 260, 0, 0),
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.near_me),
                label: Text('이동'),
              )),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            width: 300,
            height: 110,
            // color: Colors.grey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return FacilityInfo();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Column(
                    children: [
                      Text(
                        '장치 5개',
                      ),
                      Text(
                        'XXXXX집',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '서울특별시 용산구 효창원로XX길 XX-X',
                      ),
                      Text(
                        '시스템 관리자 XXXXXXX | 통합안전등급 X',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      // body: Align(
      //   alignment: Alignment.bottomCenter,
      //   child: Container(
      //     margin: EdgeInsets.all(50),
      //     width: 300,
      //     height: 150,
      //     // color: Colors.blue,
      //     child: FloatingActionButton(
      //       onPressed: () {
      //         Navigator.of(context).push(
      //           MaterialPageRoute(
      //             builder: (BuildContext context) {
      //               return FacilityInfo();
      //             },
      //           ),
      //         );
      //       },
      //       child: Text('시설물들...'),
      //     ),
      //   ),
      // ),
    );
  }
}
