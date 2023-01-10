import 'package:flutter/material.dart';

class TextfieldPassword extends StatelessWidget {
  const TextfieldPassword({
    Key? key,
    required this.text,
    required this.hint,
    required this.controller,
    required this.colornya,
  }) : super(key: key);
  final String text, hint;
  final TextEditingController controller;
  final Color colornya;

  @override
  Widget build(BuildContext context) {
    //size
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // if (size.width < size.height) const SizedBox(height: 10),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: colornya, fontWeight: FontWeight.bold),
        ),
        // if (size.width < size.height) const SizedBox(height: 10),
        //input
        Container(
          alignment: Alignment.center,
          height: 50,
          child: TextFormField(
            obscureText: true,
            controller: controller,
            //text align vertikal
            textAlignVertical: TextAlignVertical.bottom,
            //style text
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.black),
            decoration: InputDecoration(
              // contentPadding:
              //     const EdgeInsets.only(left: 8.0, bottom: 8.0, top: 8.0),
              hintText: hint,
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.black45),
              //color fill
              filled: true,
              fillColor: Colors.white,
              //border
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        if (size.width < size.height) const SizedBox(height: 10),
      ],
    );
  }
}
