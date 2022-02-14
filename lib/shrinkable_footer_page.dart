import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ShinkableFooterpage extends StatefulWidget {
  const ShinkableFooterpage({Key? key}) : super(key: key);

  @override
  _ShinkableFooterpageState createState() => _ShinkableFooterpageState();
}

class _ShinkableFooterpageState extends State<ShinkableFooterpage> {
  final _scrollController = ScrollController();
  bool isHiding = false;

  @override
  void initState() {
    super.initState();
    _listenScroll();
  }

  @override
  void dispose() {
    _scrollController.removeListener(() {});
    super.dispose();
  }

  void _listenScroll() {
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        isHiding = true;
      } else {
        isHiding = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              controller: _scrollController,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 16.0, right: 50.0),
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                    ),
                    color: Color(0xFFFEEAE6),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 70),
                      Text(
                        "スクロールに応じて\nBottomNavigationBarが\n縮みます。",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                            color: Color(0xFF442C2E),
                            height: 1.2),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Image.network(
                    'https://images.unsplash.com/photo-1528164344705-47542687000d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1369&q=80'),
                const SizedBox(
                  height: 20.0,
                ),
                Image.network(
                    'https://images.unsplash.com/photo-1532236204992-f5e85c024202?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1372&q=80'),
                const SizedBox(
                  height: 20.0,
                ),
                Image.network(
                    'https://images.unsplash.com/photo-1493479874819-4303c36fa0f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
                const SizedBox(
                  height: 20.0,
                ),
                Image.network(
                    'https://images.unsplash.com/photo-1463319611694-4bf9eb5a6e72?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
                const SizedBox(
                  height: 20.0,
                ),
                Image.network(
                    'https://images.unsplash.com/photo-1469998265221-245c7148df5d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80'),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
            Positioned(
              child: _BottomNavigationBar(
                isHiding: isHiding,
              ),
              bottom: 0,
            )
          ],
        ),
      ),
    );
  }
}

class _BottomNavigationBar extends StatelessWidget {
  _BottomNavigationBar({required this.isHiding});

  final bool isHiding;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      height: isHiding ? 32 : 60,
      color: Color(0xFFFEEAE6),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _IconTextItem(
                isHiding: isHiding,
                deviceWidth: width,
                icon: Icons.home,
                title: 'Home'),
            _IconTextItem(
                isHiding: isHiding,
                deviceWidth: width,
                icon: Icons.star,
                title: 'Favorite'),
            _IconTextItem(
                isHiding: isHiding,
                deviceWidth: width,
                icon: Icons.favorite,
                title: 'Like'),
            _IconTextItem(
                isHiding: isHiding,
                deviceWidth: width,
                icon: Icons.settings,
                title: 'Menu'),
          ],
        ),
      ),
    );
  }
}

class _IconTextItem extends StatelessWidget {
  const _IconTextItem({
    Key? key,
    required this.deviceWidth,
    required this.isHiding,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final double deviceWidth;
  final bool isHiding;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 0.25 * (deviceWidth - 32),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Icon(
              icon,
              color: Color(0xFF442C2E),
              size: 24,
            ),
          ),
          AnimatedOpacity(
            opacity: isHiding ? 0 : 1,
            duration: const Duration(milliseconds: 120),
            curve: Curves.easeInQuart,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                title,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
