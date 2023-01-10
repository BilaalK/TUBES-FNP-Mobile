import 'package:flutter/material.dart';
import 'package:fnp_tubes/components/dropdown_default.dart';
import 'package:fnp_tubes/components/input_jam.dart';
import 'package:fnp_tubes/pages/status_kandidat.dart';

import '../components/input_tanggal.dart';
// import '../components/text_field_input.dart';

class InputKandidat extends StatefulWidget {
  const InputKandidat({super.key});

  @override
  State<InputKandidat> createState() => _InputKandidatState();
}

class _InputKandidatState extends State<InputKandidat> {
  final TextEditingController _deskripsicontroller = TextEditingController();
  final TextEditingController _dateCtl = TextEditingController();
  final TextEditingController _hourctl = TextEditingController();

  String jobtargetvalue = 'Job Target 1';
  List<String> listjobtarget = ['Job Target 1', 'Job Target 2', 'Job Target 3'];

  String pengujifnp = 'Penguji 1';
  List<String> listpengujifnp = ['Penguji 1', 'Penguji 2', 'Penguji 3'];

  String kandidat = 'Kandidat 1';
  List<String> listkandidat = ['Kandidat 1', 'Kandidat 2', 'Kandidat 3'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/image2.png',
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.arrow_back_ios_new,
                                size: 20,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Text(
                            'INPUT KANDIDAT FNP',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(height: 230),
                      Container(
                        margin: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)),
                        padding: const EdgeInsets.all(24),
                        child: Column(
                          children: [
                            DropDownDefault(
                                valuenya: jobtargetvalue,
                                colorbox: Colors.transparent,
                                listnya: listjobtarget,
                                functionnya: (value) {
                                  setState(() {
                                    jobtargetvalue = value!;
                                  });
                                },
                                textnya: 'Job Target'),
                            const SizedBox(height: 25),
                            DropDownDefault(
                                valuenya: pengujifnp,
                                colorbox: Colors.transparent,
                                listnya: listpengujifnp,
                                functionnya: (value) {
                                  setState(() {
                                    pengujifnp = value!;
                                  });
                                },
                                textnya: 'List Penguji FNP'),
                            const SizedBox(height: 25),
                            DropDownDefault(
                                valuenya: kandidat,
                                colorbox: Colors.transparent,
                                listnya: listkandidat,
                                functionnya: (value) {
                                  setState(() {
                                    kandidat = value!;
                                  });
                                },
                                textnya: 'Input Kandidat'),
                            const SizedBox(height: 25),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Deskripsi Kandidat',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Card(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(color: Colors.black),
                                  controller: _deskripsicontroller,
                                  maxLines: 8, //or null
                                  decoration: const InputDecoration.collapsed(
                                      hintText: "Kandidat 1"),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.indigo.shade700),
                                onPressed: () {},
                                child: const Text('+ Tambah Kandidat'),
                              ),
                            ),
                            const SizedBox(height: 200),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Tanggal Pengujian FNP',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                              ),
                            ),
                            InpuTanggal(dateCtl: _dateCtl, text1: 'dd/mm/yyyy'),
                            const SizedBox(height: 20),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Waktu Pengujian FNP',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                              ),
                            ),
                            InputJam(dateCtl: _hourctl, text1: '08.00 - 10.00')
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 35, right: 35),
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const StatusKandidat(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo.shade900,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            'SUBMIT',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
