import 'package:flutter/material.dart';

class ExpandableContainer extends StatefulWidget {
  final String title;
  final String content;


  const ExpandableContainer({
    required this.title,
    required this.content,
  });

  @override
  _ExpandableContainerState createState() => _ExpandableContainerState();
}

class _ExpandableContainerState extends State<ExpandableContainer> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      child: Padding(

        padding: const EdgeInsets.all(15.0),
        child: AnimatedContainer(
          // height: _isExpanded ? null : widget.initialHeight,
          duration: Duration(milliseconds: 300),
          color: Colors.grey.shade300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(

                  children: [
                    Center(

                      child: Text(
                        widget.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18.0,
                          color: Colors.black
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.add,size: 25,)
                  ],
                ),
              ),
              AnimatedOpacity(
                opacity: _isExpanded ? 1.0 : 0.0,
                duration: Duration(milliseconds: 300),
                child: Text(
                  widget.content,
                  style: TextStyle(fontSize: 16.0, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}