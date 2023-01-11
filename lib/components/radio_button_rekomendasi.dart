import 'package:flutter/material.dart';

class RadioButtonRekomendasi extends StatefulWidget {
  const RadioButtonRekomendasi({super.key});

  @override
  State<RadioButtonRekomendasi> createState() => _RadioButtonRekomendasiState();
}

class _RadioButtonRekomendasiState extends State<RadioButtonRekomendasi> {
  String _nilai = 'A (DAPAT DISARANKAN)';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: _nilai == 'A (DAPAT DISARANKAN)'
                  ? Colors.indigo.shade900
                  : Colors.white,
              border: Border.all(color: Colors.black)),
          child: ListTile(
            title: Text(
              'A (DAPAT DISARANKAN)',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: _nilai == 'A (DAPAT DISARANKAN)'
                      ? Colors.white
                      : Colors.black),
            ),
            leading: Radio(
              value: 'A (DAPAT DISARANKAN)',
              groupValue: _nilai,
              onChanged: (value) {
                setState(
                  () {
                    _nilai = value!;
                  },
                );
              },
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: _nilai == 'B (DISARANKAN DENGAN CATATAN)'
                ? Colors.indigo.shade900
                : Colors.white,
            border: Border.all(color: Colors.black),
          ),
          child: ListTile(
            title: Text(
              'B (DISARANKAN DENGAN CATATAN)',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: _nilai == 'B (DISARANKAN DENGAN CATATAN)'
                      ? Colors.white
                      : Colors.black),
            ),
            leading: Radio(
              value: 'B (DISARANKAN DENGAN CATATAN)',
              groupValue: _nilai,
              onChanged: (value) {
                setState(
                  () {
                    _nilai = value!;
                  },
                );
              },
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: _nilai == 'C (TIDAK DISARANKAN)'
                  ? Colors.indigo.shade900
                  : Colors.white,
              border: Border.all(color: Colors.black)),
          child: ListTile(
            title: Text(
              'C (TIDAK DISARANKAN)',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: _nilai == 'C (TIDAK DISARANKAN)'
                      ? Colors.white
                      : Colors.black),
            ),
            leading: Radio(
              value: 'C (TIDAK DISARANKAN)',
              groupValue: _nilai,
              onChanged: (value) {
                setState(
                  () {
                    _nilai = value!;
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
