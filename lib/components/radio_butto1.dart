import 'package:flutter/material.dart';

class SampleRadioButton extends StatefulWidget {
  const SampleRadioButton({super.key});

  @override
  State<SampleRadioButton> createState() => _SampleRadioButtonState();
}

class _SampleRadioButtonState extends State<SampleRadioButton> {
  String _nilai = '1';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: _nilai == '1' ? Colors.indigo.shade900 : Colors.white,
              border: Border.all(color: Colors.black)),
          child: ListTile(
            title: Text(
              '1',
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: _nilai == '1' ? Colors.white : Colors.black),
            ),
            leading: Radio(
              value: '1',
              groupValue: _nilai,
              onChanged: (value) {
                setState(() {
                  _nilai = value!;
                });
              },
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: _nilai == '2' ? Colors.indigo.shade900 : Colors.white,
              border: Border.all(color: Colors.black)),
          child: ListTile(
            title: Text(
              '2',
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: _nilai == '2' ? Colors.white : Colors.black),
            ),
            leading: Radio(
              value: '2',
              groupValue: _nilai,
              onChanged: (value) {
                setState(() {
                  _nilai = value!;
                });
              },
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: _nilai == '3' ? Colors.indigo.shade900 : Colors.white,
              border: Border.all(color: Colors.black)),
          child: ListTile(
            title: Text(
              '3',
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: _nilai == '3' ? Colors.white : Colors.black),
            ),
            leading: Radio(
              value: '3',
              groupValue: _nilai,
              onChanged: (value) {
                setState(() {
                  _nilai = value!;
                });
              },
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: _nilai == '4' ? Colors.indigo.shade900 : Colors.white,
              border: Border.all(color: Colors.black)),
          child: ListTile(
            title: Text(
              '4',
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: _nilai == '4' ? Colors.white : Colors.black),
            ),
            leading: Radio(
              value: '4',
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
              color: _nilai == '5' ? Colors.indigo.shade900 : Colors.white,
              border: Border.all(color: Colors.black)),
          child: ListTile(
            title: Text(
              '5',
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: _nilai == '5' ? Colors.white : Colors.black),
            ),
            leading: Radio(
              value: '5',
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
