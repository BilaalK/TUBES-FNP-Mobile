import 'package:flutter/material.dart';
// import 'package:fnp_tubes/components/card_kandidat.dart';
import 'package:fnp_tubes/components/card_kandidat_tanpa_edit.dart';
// import 'package:fnp_tubes/components/search.dart';

// import '../components/dropdown_default.dart';
// import '../components/input_tanggal.dart';

class ListPesertaKandidat extends StatefulWidget {
  const ListPesertaKandidat({super.key});

  @override
  State<ListPesertaKandidat> createState() => _ListPesertaKandidatState();
}

class _ListPesertaKandidatState extends State<ListPesertaKandidat> {
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
          'List Peserta Kandidat FNP',
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              CardKandidatTanpaEdit(),
              CardKandidatTanpaEdit(),
              CardKandidatTanpaEdit(),
              CardKandidatTanpaEdit(),
              CardKandidatTanpaEdit(),
            ],
          ),
        ),
      ),
    );
  }
}
