import 'package:flutter/material.dart';

class FacilityInfo extends StatefulWidget {
  const FacilityInfo({super.key});

  @override
  State<FacilityInfo> createState() => _FacilityInfoState();
}

class _FacilityInfoState extends State<FacilityInfo>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(
      length: 4,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          '시설물 명',
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: TabBar(
              tabs: [
                Container(
                  height: 60,
                  alignment: Alignment.center,
                  child: Text(
                    '시설물정보',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  alignment: Alignment.center,
                  child: Text(
                    '장치점검이력',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  alignment: Alignment.center,
                  child: Text(
                    '장치목록',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  alignment: Alignment.center,
                  child: Text(
                    '이벤트이력',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black,
              controller: tabController,
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                Container(
                  child: ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                            width: 380,
                            height: 40,
                            color: Colors.grey[800],
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                '시설물 정보',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 380,
                        height: 150,
                        color: Colors.grey[200],
                        margin: EdgeInsets.fromLTRB(15, 0, 16, 0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '안전진단등급',
                                ),
                                Text(
                                  '데이터 안전등급',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 380,
                            height: 40,
                            color: Colors.grey[800],
                            margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                '시설물 관리',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 380,
                        height: 150,
                        color: Colors.grey[200],
                        margin: EdgeInsets.fromLTRB(15, 0, 16, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '관리부서',
                            ),
                            Text(
                              '담당자',
                            ),
                            Text(
                              '담당자 연락처',
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                            width: 380,
                            height: 40,
                            color: Colors.grey[800],
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                '시설물 사진',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 0, 16, 20),
                        width: 380,
                        height: 200,
                        color: Colors.grey[200],
                        child: Image.asset(
                          'assets/img/map.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(130, 10, 0, 0),
                  child: Text(
                    '장치점검이력이 없습니다.',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 15, 0, 10),
                        width: 380,
                        height: 250,
                        color: Colors.blue,
                        child: Image.asset(
                          'assets/img/map.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: 380,
                        height: 40,
                        color: Colors.grey[800],
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '장치명',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '장치상태',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '현장점검',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 380,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom:
                                    BorderSide(color: Colors.black, width: 1),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('측점1'),
                                Text('정상'),
                                IconButton(
                                  onPressed: () => FlutterDialog(),
                                  icon: Icon(
                                    Icons.build,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 380,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.black,
                                  width: 1,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('측점2'),
                                Text('정상'),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.build,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 10, 15),
                        child: Column(
                          children: [
                            Text(
                              '개정초등육교의 측점2 단말기 기울기가 초기 값에 비해 1도 차이가 발생 하였습니다.',
                              style: TextStyle(
                                fontSize: 14.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void FlutterDialog() {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          title: Container(
            width: 400,
            height: 460,
            child: Column(
              children: [
                new Text(
                  '현장장치 점검이력',
                ),
              ],
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Dialog Content',
              ),
            ],
          ),
        );
      },
    );
  }
}
