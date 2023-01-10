import 'package:flutter/material.dart';

// import '../constants.dart';

class InputJam extends StatelessWidget {
  const InputJam({
    Key? key,
    required TextEditingController dateCtl,
    required this.text1,
  })  : _dateCtl = dateCtl,
        super(key: key);

  final TextEditingController _dateCtl;
  final String text1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   text1,
        //   style: Theme.of(context)
        //       .textTheme
        //       .headline6!
        //       .copyWith(color: Colors.black),
        // ),
        TextField(
          readOnly: true,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Colors.black),
          controller: _dateCtl,
          decoration: InputDecoration(
            hintText: text1,
            filled: true,
            fillColor: Colors.white,
            suffixIcon: const Icon(
              Icons.punch_clock,
              size: 30,
            ),
            // focusedBorder: const OutlineInputBorder(

            //     // borderSide: BorderSide(
            //     //   width: 1,
            //     //   color: kPrimaryColor,
            //     // ),
            //     // borderRadius: BorderRadius.circular(10),
            //     ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
          onTap: () async {
            showTimePicker(
              initialTime: TimeOfDay.now(),
              context: context,
            );
          },
        ),
      ],
    );
  }
}
