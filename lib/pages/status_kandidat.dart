import 'package:flutter/material.dart';
import 'package:fnp_tubes/components/card_kandidat.dart';
import 'package:fnp_tubes/components/search.dart';

import '../components/dropdown_default.dart';
import '../components/input_tanggal.dart';

class StatusKandidat extends StatefulWidget {
  const StatusKandidat({super.key});

  @override
  State<StatusKandidat> createState() => _StatusKandidatState();
}

class _StatusKandidatState extends State<StatusKandidat> {
  final TextEditingController _dateCtl = TextEditingController();
  final TextEditingController _searchctl = TextEditingController();

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
          'Status Kandidat FNP',
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
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
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
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(color: Colors.blue.shade100),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Periode FNP',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    InpuTanggal(dateCtl: _dateCtl, text1: 'dd/mm/yyyy'),
                    const SizedBox(height: 25),
                    DropDownDefault(
                        valuenya: jobtargetvalue,
                        colorbox: Colors.white,
                        listnya: listjobtarget,
                        functionnya: (value) {
                          setState(() {
                            jobtargetvalue = value!;
                          });
                        },
                        textnya: 'Job Target'),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo.shade700,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Filter',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SearchWidget(
                controller: _searchctl,
                hinttext: 'Cari Peserta Kandidat',
              ),
              const SizedBox(height: 20),
              const CardKandidat(),
              const CardKandidat(),
              const CardKandidat(),
            ],
          ),
        ),
      ),
    );
  }
}
