import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_socket_channel/io.dart';

final sty = GoogleFonts.montserrat(
  letterSpacing: 1,
  fontWeight: FontWeight.w400,
);

String btcPrice = "0";
String bnbPrice = "0";
String ethPrice = "0";
String dogePrice = "0";
String trxPrice = "0";
String sandPrice = "0";
String nexoPrice = "0";
String shibPrice = "0";

final btcChannel = IOWebSocketChannel.connect(
    'wss://stream.binance.com:9443/ws/btcusdt@trade');

final bnbChannel = IOWebSocketChannel.connect(
    'wss://stream.binance.com:9443/ws/bnbusdt@trade');

final ethChannel = IOWebSocketChannel.connect(
    'wss://stream.binance.com:9443/ws/ethusdt@trade');

final dogeChannel = IOWebSocketChannel.connect(
    'wss://stream.binance.com:9443/ws/dogeusdt@trade');

final trxChannel = IOWebSocketChannel.connect(
    'wss://stream.binance.com:9443/ws/trxusdt@trade');

final sandChannel = IOWebSocketChannel.connect(
    'wss://stream.binance.com:9443/ws/sandusdt@trade');

final nexoChannel = IOWebSocketChannel.connect(
    'wss://stream.binance.com:9443/ws/nexousdt@trade');

final shibChannel = IOWebSocketChannel.connect(
    'wss://stream.binance.com:9443/ws/shibusdt@trade');
