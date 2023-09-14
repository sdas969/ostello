import 'package:flutter/material.dart';

class TagWidget extends StatefulWidget {
  TagWidget({super.key, required this.tagName, this.isSelected = false});
  final String tagName;
  bool isSelected;

  @override
  State<TagWidget> createState() => _TagWidgetState();
}

class _TagWidgetState extends State<TagWidget> {
  @override
  Widget build(BuildContext context) =>
      Stack(alignment: Alignment.topRight, children: [
        FilterChip(
            showCheckmark: false,
            selected: widget.isSelected,
            onSelected: (value) => setState(() {
                  widget.isSelected = value;
                }),
            color: const MaterialStatePropertyAll(Colors.white),
            side: BorderSide(
                color: widget.isSelected
                    ? const Color(0xff7D23E0)
                    : const Color(0xffACACAC)),
            label: Text(widget.tagName),
            labelStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: widget.isSelected
                    ? const Color(0xff7D23E0)
                    : Colors.black)),
        if (widget.isSelected)
          const CircleAvatar(
              foregroundColor: Colors.white,
              backgroundColor: Color(0xff7D23E0),
              radius: 8,
              child: Icon(Icons.close, size: 8))
      ]);
}
