import 'package:flutter/material.dart';
import 'package:org_aero22/Events/day_one.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class EventListPage extends StatefulWidget {
  const EventListPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _EventListPageState();
}

// ignore: camel_case_types
class _EventListPageState extends State<EventListPage> {
  int _selected = 0;
  void changeSelected(int index) {
    setState(() {
      _selected = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (BuildContext context,
                bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  toolbarHeight: 60,
                  backgroundColor: Colors.black,
                  centerTitle: true,
                  title: const Text(' EVENTS',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,fontFamily: 'Urbanist', color: Colors.white70,)),
                  pinned: true,
                  floating: true,
                  bottom: TabBar(
                    unselectedLabelColor: Colors.white70,
                    labelPadding: const EdgeInsets.only(left: 40,right: 40),
                    isScrollable: true,
                    tabs: const [
                      Tab(text: 'DAY 1'),
                      Tab(text: 'DAY 2'),
                      Tab(text: 'DAY 3'),
                    ],
                    labelColor: const Color(0xFFFF9603),
                    indicator: MaterialIndicator(
                      topLeftRadius: 8,
                      topRightRadius: 8,
                      color: Colors.orange,
                      paintingStyle: PaintingStyle.fill,

                    ),
                  ),
                ),
              ];
            },
            body:  const TabBarView(
              children: <Widget>[
                dayOnePage(),
                dayOnePage(),
                dayOnePage(),
              ],
            ),
          ),
        )
    );
  }
}
