import 'package:flutter/material.dart';
import 'package:kullanici_girisi/actions/firebase.dart';

class BilgiGirisi extends StatefulWidget {
  const BilgiGirisi({super.key});

  @override
  State<BilgiGirisi> createState() => _BilgiGirisiState();
}

class _BilgiGirisiState extends State<BilgiGirisi> {
  final TextEditingController _sifreController = TextEditingController();
  final TextEditingController _mailController = TextEditingController();
  bool _sifreGor = false;

  void girisYapAction(mail, sifre) {
    FirebaseAction().login(mail, sifre);
    _mailController.clear();
    _sifreController.clear();
  }

  @override
  void initState() {
    super.initState();
    _mailController.addListener(_mailDinle);
    _sifreController.addListener(_sifreDinle);
    _sifreGor = true;
  }

  void _mailDinle() {
    setState(() {});
  }

  void _sifreDinle() {
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    _mailController.clear();
    _sifreController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/arkaPlanSagbilTeknoloji.png", scale: 1.2),
        Padding(
          padding: EdgeInsets.all(10),
          child: TextFormField(
            controller: _mailController,

            decoration: InputDecoration(
              floatingLabelAlignment: FloatingLabelAlignment.center,
              labelText: "E Posta",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: TextFormField(
            controller: _sifreController,

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
              girisYapAction(_mailController.text, _sifreController.text);
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
        Padding(
          padding: EdgeInsets.only(left: 50, top: 30, right: 50),
          child: Text("Buraya İstediğiniz Bilgiyi Yazabilirsiniz"),
        ),
      ],
    );
  }
}
