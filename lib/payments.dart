import 'package:flutter/cupertino.dart';

class Payments extends StatefulWidget {
  const Payments({super.key});

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  List payment = [];
  @override
  void initState() {
    payment.add("assets/img_9.png");
    payment.add("assets/img_10.png");
    payment.add("assets/img_11.png");
    payment.add("assets/img_12.png");
    payment.add("assets/img_13.png");
    payment.add("assets/img_14.png");
    payment.add("assets/img_15.png");
    payment.add("assets/img_16.png");
    payment.add("assets/img_17.png");
    payment.add("assets/img_18.png");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: payment.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 18, crossAxisCount: 4),
      itemBuilder: (context, index) {
        return Image.asset("${payment[index]}");
      },
    );
  }
}
