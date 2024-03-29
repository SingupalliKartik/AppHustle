
import 'package:apphustle/screens/favhelp/fav.dart';
import 'package:apphustle/screens/favhelp/favbody.dart';
import 'package:apphustle/screens/favhelp/favtost.dart';

import 'package:apphustle/screens/homehelp/home.dart';
import 'package:apphustle/screens/homehelp/hometost.dart';
import 'package:apphustle/screens/playlisthelp/playlist.dart';
import 'package:apphustle/screens/playlisthelp/playtost.dart';

import 'package:apphustle/screens/profilehelp/profile.dart';
import 'package:apphustle/screens/search%20help/search.dart';
import 'package:apphustle/screens/search%20help/searchlist.dart';
import 'package:apphustle/screens/search%20help/searchtose.dart';
import 'package:apphustle/screens/songscr/home_screen.dart';
import 'package:apphustle/screens/songscr/playlist_screen.dart';

import 'package:flutter/material.dart';

class bottomnav extends StatelessWidget {
  bottomnav(this.which);
  String which;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      margin: EdgeInsets.all(15),
      child: Container(
        padding: EdgeInsets.all(6),
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color(0xD3FFFFFF),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
IconButton(
              icon: Icon(
                Icons.home_rounded,
                size: 30,
                color: which == "home" || which=="search" ? Color(0xff137C86) : Color(0x5f1f1e1e),
              ),
              onPressed: () {
                hometost();
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => home()));
              },
            ),
            IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  size: 30,
                  color:
                      which == "fav" ? Color(0xff137C86) : Color(0x5f1f1e1e),
                ),
                onPressed:() {
                  showtost();
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => fav()));},),
            IconButton(
              icon: Icon(
                Icons.queue_music_rounded,
                size: 30,
                color: which == "play" ? Color(0xff137C86) : Color(0x5f1f1e1e),
              ),
              onPressed: () {
                showtost1();
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => playlist()));
              },
            ),
            
            IconButton(
              icon: Icon(
                Icons.account_circle_outlined,
                size: 30,
                color: which == "profile" ? Color(0xff137C86) : Color(0x5f1f1e1e),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => profile()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
