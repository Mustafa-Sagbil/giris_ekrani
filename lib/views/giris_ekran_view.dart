import 'package:flutter/material.dart';
import 'package:kullanici_girisi/actions/icon_actions.dart';

class BilgiGirisi extends StatefulWidget {
  const BilgiGirisi({super.key});

  @override
  State<BilgiGirisi> createState() => _BilgiGirisiState();
}

class _BilgiGirisiState extends State<BilgiGirisi> {
  final mailGirisi = TextEditingController();

  final sifreGirisi = TextEditingController();

  var _sifreGor;

  @override
  void initState() {
    super.initState();

    _sifreGor = true;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/arkaPlanSagbilTeknoloji.png", scale: 1.2),
        Padding(
          padding: EdgeInsets.all(10),
          child: TextField(
            controller: mailGirisi,
            decoration: InputDecoration(
              labelText: "E Posta",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: TextField(
            controller: sifreGirisi,
            obscureText: _sifreGor,
            decoration: InputDecoration(
              fillColor: Colors.amberAccent,
              enabled: true,
              floatingLabelAlignment: FloatingLabelAlignment.center,
              labelText: "Şifre",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 50, top: 10, right: 50),

          child: ElevatedButton(
            onPressed: () {
              GirisYapAction().girisYapAction(mailGirisi, sifreGirisi);
            },
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.deepPurpleAccent),
            ),
            child: Center(
              child: Text(
                "Giriş Yap",
                style: TextStyle(
                  color: Colors.grey.shade100,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
