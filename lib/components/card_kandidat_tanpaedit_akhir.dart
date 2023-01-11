import 'package:flutter/material.dart';

import '../pages/edit_kandidat.dart';

class CardKandidatTanpaEditAkhir extends StatelessWidget {
  const CardKandidatTanpaEditAkhir({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          ListTile(
            title: Text(
              'Kandidat 1 FNP',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '30-05-2022',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            trailing: Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.green),
              child: Text(
                'Kandidat Sudah Dinilai',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.black),
              ),
            ),
          ),
          Divider(
            color: Colors.red,
          ),
          ListTile(
            trailing: Icon(Icons.edit),
            title: Text(
              '955389 - HELMI INDRAWAN YUS',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            isThreeLine: true,
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Site Manager Assurance & Maintenace',
                    style: Theme.of(context).textTheme.bodySmall),
                SizedBox(height: 5),
                Text('Job Target : Mgr BGES Regional SUMATERA I',
                    style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
          )
        ],
      ),
    );
  }
}
