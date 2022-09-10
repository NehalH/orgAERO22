import 'package:flutter/material.dart';
import 'package:org_aero22/contacts/event_heads.dart';
import 'package:org_aero22/contacts/primary_heads.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _contactPageState();
}

// ignore: camel_case_types
class _contactPageState extends State<ContactPage> {
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
        length: 2,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (BuildContext context,
                bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  toolbarHeight: 100,
                  backgroundColor: Colors.black,
                  centerTitle: true,
                  title: const Text('CONTACT',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,fontFamily: 'Urbanist', color: Colors.white,)),
                  pinned: false,
                  floating: true,
                  //snap: false,
                  bottom: TabBar(
                    unselectedLabelColor: Colors.white70,
                    labelPadding: const EdgeInsets.only(left: 40,right: 40),
                    isScrollable: true,
                    tabs: const [
                      Tab(text: 'Primary Heads'),
                      Tab(text: 'Event Heads'),
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
                primaryHeadsPage(),
                eventHeadsPage(),
              ],
            ),
          ),
        )
    );
  }
}
