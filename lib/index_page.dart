import 'package:flutter/material.dart';
import 'package:layout_training/responsive_design_page.dart';
import 'package:layout_training/shrinkable_footer_page.dart';

import './grid_view_page.dart';
import 'sliver_app_bar_page.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const GridViewPage();
                }));
              },
              child: Text("GridView"),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const SliverAppBarPage();
                }));
              },
              child: Text("SliverAppBar"),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const ShinkableFooterpage();
                }));
              },
              child: Text("ShinkableFooter"),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return ResponsiveDesignPage();
                }));
              },
              child: Text("ResponsiveDesign"),
            ),
          ),
        ],
      ),
    );
  }
}
