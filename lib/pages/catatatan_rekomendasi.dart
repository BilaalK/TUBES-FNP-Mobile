// import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:fnp_tubes/components/card_kandidat.dart';
// import 'package:fnp_tubes/components/card_kandidat_tanpa_edit.dart';
// import 'package:fnp_tubes/components/radio_butto1.dart';
import 'package:fnp_tubes/components/radio_button_rekomendasi.dart';
// import 'package:fnp_tubes/components/search.dart';
import 'package:fnp_tubes/pages/list_kandidat_akhir.dart';

// import '../components/dropdown_default.dart';
// import '../components/input_tanggal.dart';

class CatatanRekomendasi extends StatefulWidget {
  const CatatanRekomendasi({super.key});

  @override
  State<CatatanRekomendasi> createState() => _CatatanRekomendasiState();
}

class _CatatanRekomendasiState extends State<CatatanRekomendasi> {
  // final TextEditingController _dateCtl = TextEditingController();
  final TextEditingController _ctl1 = TextEditingController();

  bool _isCheked = false;

  String jobtargetvalue = 'Job Target 1';
  List<String> listjobtarget = ['Job Target 1', 'Job Target 2', 'Job Target 3'];

  Future<void> _showdialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(0),
          // title: const Text('AlertDialog Title'),
          content: Stack(
            children: [
              Image.asset(!_isCheked
                  ? 'assets/notifsalah.png'
                  : 'assets/notifbenar.png'),
              Positioned(
                  top: 80,
                  left: 120,
                  child: Image.asset(
                    !_isCheked ? 'assets/close 1.png' : 'assets/success.png',
                    width: 70,
                    height: 70,
                    fit: BoxFit.contain,
                  )),
            ],
          ),
          actions: <Widget>[
            if (!_isCheked)
              TextButton(
                child: const Text('Back'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            if (_isCheked)
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ListKandidatAkhir()),
                    );
                  },
                  child: const Text('Lanjut Kandidat'))
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.black;
    }

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Penilaian FNP Kandidat 1',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        leading: Card(
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
                size: 12,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.blue.shade300, style: BorderStyle.solid)),
                // margin: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'HELMI INDRAWAN YUS / 955389 / Site Manager Assurance & Maintenace',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.black),
                      textAlign: TextAlign.start,
                    ),
                    Text('Job Target : Mgr BGES Regional SUMATERA I',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: Colors.black),
                        textAlign: TextAlign.start),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Catatan Penguji',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              Card(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.black),
                      controller: _ctl1,
                      maxLines: 8, //or null
                      decoration: const InputDecoration.collapsed(
                          hintText: "Masukkan Contoh"),
                    ),
                  )),
              Text(
                'Rekomendasi Akhir',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 30),
              const RadioButtonRekomendasi(),
              const SizedBox(height: 20),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: _isCheked,
                    onChanged: (bool? value) {
                      setState(() {
                        _isCheked = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      'Dengan ini menyatakan bahwa penguji menyetujui penilaian ini dan penguji melakukan penilaian tersebut dalam keadaan sadar dan tanpa paksaan apapun',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                // padding: EdgeInsets.only(left: 35, right: 35),
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Kembali',
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                // padding: EdgeInsets.only(left: 35, right: 35),
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: _showdialog,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Submit',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
