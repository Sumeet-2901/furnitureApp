import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/screens/home/components/body.dart';
import 'package:furniture_app/size_config.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It help us to  make our UI responsive
    SizeConfig().init(context);
    return Scaffold(
        appBar: buildAppBar(), body: Body(), drawer: DrawerContainer());
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(
        "Furniture App",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/scan.svg",
            height: SizeConfig.defaultSize * 2.4, //24
          ),
          onPressed: () {},
        ),
        Center(
          child: Text(
            "Scan",
            style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(width: SizeConfig.defaultSize),
      ],
    );
  }
}

class DrawerContainer extends StatelessWidget {
  const DrawerContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.85,
              child: DrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icons/work.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView(children: [
              ListTile(
                title: Text("Home"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("Home"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("Home"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("Home"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("Home"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("Home"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("Home"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("Home"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("Home"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text("Home"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              )
            ]),
          )
        ],
      ),
    );
  }
}
