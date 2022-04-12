import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import '../constants/app_font.dart';

final formatter = NumberFormat("#,###");

class Price extends StatelessWidget {
  Price({Key? key, required int price}) : _price = formatter.format(price),
        super(key: key);
  final String _price;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$_price円',
      style: const TextStyle(
        fontSize: fontSizeMedium,
      ),
    );
  }
}