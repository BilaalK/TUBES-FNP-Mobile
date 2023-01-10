import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
    required TextEditingController controller,
    required this.hinttext,
  })  : _controller = controller,
        super(key: key);

  final TextEditingController _controller;
  final String hinttext;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text(
        //   'Find your favourite vehicle',
        //   style: Theme.of(context).textTheme.headline5,
        // ),
        const SizedBox(height: 20),
        Container(
          alignment: Alignment.center,
          height: 50,
          margin: const EdgeInsets.only(left: 15, right: 15),
          child: TextFormField(
            controller: _controller,
            //text align vertikal
            textAlignVertical: TextAlignVertical.bottom,
            //style text
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.black),
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              // contentPadding:
              //     const EdgeInsets.only(left: 8.0, bottom: 8.0, top: 8.0),
              hintText: hinttext,
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.black45),
              //color fill
              filled: true,
              fillColor: Colors.white,
              //border
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
