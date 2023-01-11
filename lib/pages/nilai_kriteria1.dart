import 'package:flutter/material.dart';
// import 'package:fnp_tubes/components/card_kandidat.dart';
// import 'package:fnp_tubes/components/card_kandidat_tanpa_edit.dart';
import 'package:fnp_tubes/components/radio_butto1.dart';
// import 'package:fnp_tubes/components/search.dart';
import 'package:fnp_tubes/pages/nilai_kriteria2.dart';

// import '../components/dropdown_default.dart';
// import '../components/input_tanggal.dart';

class NilaiKriteria1 extends StatefulWidget {
  const NilaiKriteria1({super.key});

  @override
  State<NilaiKriteria1> createState() => _NilaiKriteria1State();
}

class _NilaiKriteria1State extends State<NilaiKriteria1> {
  // final TextEditingController _dateCtl = TextEditingController();
  // final TextEditingController _searchctl = TextEditingController();

  String jobtargetvalue = 'Job Target 1';
  List<String> listjobtarget = ['Job Target 1', 'Job Target 2', 'Job Target 3'];
  @override
  Widget build(BuildContext context) {
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
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.blue.shade300, style: BorderStyle.solid),
              ),
              margin: const EdgeInsets.all(16),
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
            Container(
              margin: const EdgeInsets.all(8),
              height: 30,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'CHARACTER',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.all(8),
              height: 30,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 50),
                Text(
                  'Aspek : ENTHUSIASM',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity * 0.8,
              child: Text(
                'Passion terhadap penugasan yang diberikan',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SampleRadioButton(),
            const SizedBox(height: 30),
            SizedBox(
              // padding: EdgeInsets.only(left: 35, right: 35),
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NilaiKriteria2()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo.shade900,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Selanjutnya',
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
    );
  }
}
