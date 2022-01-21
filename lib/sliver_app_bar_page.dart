import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SliverAppBarPage extends StatefulWidget {
  const SliverAppBarPage({Key? key}) : super(key: key);

  @override
  _SliverAppBarPageState createState() => _SliverAppBarPageState();
}

class _SliverAppBarPageState extends State<SliverAppBarPage> {
  double _textScale = 1.0;
  bool _isLarge = false;

  void _toggleLargeFont(bool isLarge) {
    isLarge ? _textScale = 1.2 : _textScale = 1.0;
    setState(() {
      _isLarge = isLarge;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaleFactor: _textScale,
      ),
      child: Scaffold(
        body: CustomScrollView(slivers: [
          SliverAppBar(
            backgroundColor: Colors.blueAccent.withOpacity(0.3),
            floating: true,
            pinned: true,
            snap: false,
            expandedHeight: 180,
            toolbarHeight: 60,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "記事カテゴリー",
                style: GoogleFonts.kosugiMaru(),
              ),
              background: Stack(children: [
                Container(
                  width: double.infinity,
                  child: Image.network(
                    'https://images.pexels.com/photos/267392/pexels-photo-267392.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          stops: [
                        0.5,
                        1
                      ],
                          colors: [
                        Colors.grey.withOpacity(0),
                        Colors.black38,
                      ])),
                )
              ]),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(<Widget>[
            Container(
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("文字を大きく"),
                        Switch(
                          value: _isLarge,
                          onChanged: _toggleLargeFont,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Text(
                          'Sept. 29 2020',
                          style: GoogleFonts.lato(),
                        )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.share,
                              color: Colors.blueAccent,
                            ))
                      ],
                    ),
                    Text(
                      "記事のタイトル記事のタイトル記事のタイトル記事のタイトル",
                      style: GoogleFonts.sawarabiGothic(
                          textStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87)),
                    ),
                    Divider(
                      height: 30,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/736716/pexels-photo-736716.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                          radius: 26,
                          backgroundColor: Colors.grey[200],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "山田　太郎",
                              style: GoogleFonts.sawarabiGothic(
                                  textStyle: const TextStyle(fontSize: 14)),
                            ),
                            Text(
                              "ITジャーナリスト",
                              style: GoogleFonts.sawarabiGothic(
                                  textStyle: const TextStyle(
                                      fontSize: 10, color: Colors.black54)),
                            )
                          ],
                        ),
                        Expanded(child: SizedBox()),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.blueAccent,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text("350"),
                        SizedBox(
                          width: 16,
                        ),
                        Icon(Icons.comment, color: Colors.blueAccent),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text("25"),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト",
                      style: GoogleFonts.sawarabiGothic(),
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => _ClipRRectArticle(),
                          ));
                        },
                        child: const Text(
                          "ぼかしサンプル",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]))
        ]),
      ),
    );
  }
}

class _ClipRRectArticle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.pexels.com/photos/2834219/pexels-photo-2834219.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                const Expanded(
                  child: SizedBox(),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 5,
                      sigmaY: 5,
                    ),
                    child: Container(
                      width: width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 24,
                                left: 24,
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: const NetworkImage(
                                        "https://images.pexels.com/photos/736716/pexels-photo-736716.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                                    radius: 26,
                                    backgroundColor: Colors.grey[200],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "山田　太郎",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "ITジャーナリスト",
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  const Expanded(
                                    child: SizedBox(),
                                  )
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(24),
                              child: Text(
                                "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
