import 'package:flutter/material.dart';

class DropDownDefault extends StatefulWidget {
  const DropDownDefault({
    Key? key,
    required this.valuenya,
    required this.listnya,
    required this.functionnya,
    required this.textnya,
    required this.colorbox,
  }) : super(key: key);

  final String valuenya, textnya;
  final List<String> listnya;
  final Function functionnya;
  final Color colorbox;

  @override
  State<DropDownDefault> createState() => _DropDownDefaultState();
}

class _DropDownDefaultState extends State<DropDownDefault> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.textnya,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: widget.colorbox,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(12),
          ),
          child: DropdownButton<String>(
            isExpanded: true,
            dropdownColor: Colors.white,
            value: widget.valuenya,
            icon: const Icon(Icons.keyboard_arrow_down_rounded),
            iconSize: 30,
            elevation: 16,
            style: Theme.of(context).textTheme.bodyLarge,
            underline: Container(
              height: 0,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String? newValue) {
              // setState(() {
              //   widget.dewasa = newValue!;
              // });
              widget.functionnya(newValue!);
            },
            items: widget.listnya.map<DropdownMenuItem<String>>(
              (String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.black),
                  ),
                );
              },
            ).toList(),
          ),
        ),
      ],
    );
  }
}
