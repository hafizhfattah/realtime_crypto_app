import 'dart:convert';

import 'package:flutter/material.dart';

import '../utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    btcListen();
    bnbListen();
    ethListen();
    dogeListen();
    trxListen();
    sandListen();
    nexoListen();
    shibListen();
  }

  btcListen() {
    btcChannel.stream.listen((message) {
      Map getData = jsonDecode(message);
      setState(() {
        btcPrice = getData['p'];
      });
    });
  }

  bnbListen() {
    bnbChannel.stream.listen((message) {
      Map getData = jsonDecode(message);
      setState(() {
        bnbPrice = getData['p'];
      });
    });
  }

  ethListen() {
    ethChannel.stream.listen((message) {
      Map getData = jsonDecode(message);
      setState(() {
        ethPrice = getData['p'];
      });
    });
  }

  dogeListen() {
    dogeChannel.stream.listen((message) {
      Map getData = jsonDecode(message);
      setState(() {
        dogePrice = getData['p'];
      });
    });
  }

  trxListen() {
    trxChannel.stream.listen((message) {
      Map getData = jsonDecode(message);
      setState(() {
        trxPrice = getData['p'];
      });
    });
  }

  sandListen() {
    sandChannel.stream.listen((message) {
      Map getData = jsonDecode(message);
      setState(() {
        sandPrice = getData['p'];
      });
    });
  }

  nexoListen() {
    nexoChannel.stream.listen((message) {
      Map getData = jsonDecode(message);
      setState(() {
        nexoPrice = getData['p'];
      });
    });
  }

  shibListen() {
    shibChannel.stream.listen((message) {
      Map getData = jsonDecode(message);
      setState(() {
        shibPrice = getData['p'];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crypto Market", style: sty),
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          children: [
            const SizedBox(
              height: 10.0,
            ),
            Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/1024px-Bitcoin.svg.png",
                  ),
                ),
                title: Text("BTC/USDT", style: sty),
                subtitle: Text(btcPrice, style: sty),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(
                    "https://s2.coinmarketcap.com/static/img/coins/200x200/1839.png",
                  ),
                ),
                title: Text("BNB/USDT", style: sty),
                subtitle: Text(bnbPrice, style: sty),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(
                    "https://cloudfront-us-east-1.images.arcpublishing.com/coindesk/ZJZZK5B2ZNF25LYQHMUTBTOMLU.png",
                  ),
                ),
                title: Text("ETH/USDT", style: sty),
                subtitle: Text(ethPrice, style: sty),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(
                    "https://s2.coinmarketcap.com/static/img/coins/200x200/74.png",
                  ),
                ),
                title: Text("DOGE/USDT", style: sty),
                subtitle: Text(dogePrice, style: sty),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(
                    "https://logowik.com/content/uploads/images/tron-coin-trx6384.jpg",
                  ),
                ),
                title: Text("TRX/USDT", style: sty),
                subtitle: Text(trxPrice, style: sty),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(
                    "https://cryptologos.cc/logos/the-sandbox-sand-logo.png",
                  ),
                ),
                title: Text("SAND/USDT", style: sty),
                subtitle: Text(sandPrice, style: sty),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(
                    "https://cdn1-production-images-kly.akamaized.net/Dw8gt2A0j0qvOGJkq0Eyb-x2GnM=/1200x900/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/4012029/original/044691400_1651301609-Nexo_2.jpg",
                  ),
                ),
                title: Text("NEXO/USDT", style: sty),
                subtitle: Text(nexoPrice, style: sty),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/en/5/53/Shiba_Inu_coin_logo.png",
                  ),
                ),
                title: Text("SHIB/USDT", style: sty),
                subtitle: Text(shibPrice, style: sty),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
