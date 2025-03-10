import 'package:flutter/material.dart';

class BilgiGirisi extends StatelessWidget {
  const BilgiGirisi({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/arkaPlanSagbilTeknoloji.png", scale: 1.2),
        TextField(
          decoration: InputDecoration(
            labelText: "E Posta",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ),
        TextField(
          controller: TextEditingController(),
          decoration: InputDecoration(
            fillColor: Colors.amberAccent,
            enabled: true,
            floatingLabelAlignment: FloatingLabelAlignment.center,
            labelText: "Şifre",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ),
        ElevatedButton(onPressed: () {}, child: Text("tıkla")),
      ],
    );
  }
}
