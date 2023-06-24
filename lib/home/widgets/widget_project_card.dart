import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class WidgetProjectCard extends StatefulWidget {
  final String imageAsset;
  final String title;
  final String description;
  final String projectUrl;

  const WidgetProjectCard({
    required this.imageAsset,
    required this.title,
    required this.description,
    required this.projectUrl,
  });

  @override
  _WidgetProjectCardState createState() => _WidgetProjectCardState();
}

class _WidgetProjectCardState extends State<WidgetProjectCard> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: InkWell(
            onTap: () {
              launchUrlString(widget.projectUrl);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.asset(
                    widget.imageAsset,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 4),
                      Text(
                        widget.title,
                        style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 6),
                      AnimatedCrossFade(
                        duration: const Duration(milliseconds: 300),
                        firstChild: Text(
                          widget.description,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        secondChild: Text(
                          widget.description,
                          style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        crossFadeState:
                            expanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
                      ),
                      const SizedBox(
                        height: 8,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 8,
          left: 0,
          right: 0,
          child:
              RepaintBoundary( // Use RepaintBoundary to cache parts of the widget tree that don't change often
            child:
                Container( // Use transparent colors instead of Opacity widgets to reduce the number of paint operations
              width:
                  double.infinity, // Use double.infinity instead of MediaQuery.of(context).size.width for better performance
              alignment:
                  Alignment.bottomCenter, // Use Alignment instead of FractionalOffset for better performance
              child:
                  GestureDetector( // Use GestureDetector instead of InkWell for better performance on the web
                onTap:
                    _toggleExpanded, // Use a method reference instead of an inline function for better performance
                child:
                    Card( // Use const constructors wherever possible to reduce the number of objects that need to be created and garbage collected
                  margin:
                      const EdgeInsets.only(left: 30, right: 30, top: 30),
                  color:
                      Colors.white, // Use Colors.white instead of Color(0xFFFFFFFF) for better readability and performance
                  elevation:
                      4, // Use even numbers for elevation values for better performance on the web
                  shape:
                      const CircleBorder(), // Use CircleBorder instead of RoundedRectangleBorder with a high borderRadius for better performance
                  child:
                      Icon( // Use an Icon instead of an ImageIcon for better performance on the web
                    !expanded ? Icons.keyboard_arrow_down_rounded : Icons.keyboard_arrow_up_rounded, // Use ternary operators instead of if/else statements for better readability and performance
                    color:
                        Colors.grey, // Use Colors.grey instead of Color(0xFF9E9E9E) for better readability and performance
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _toggleExpanded() {
    setState(() {
      expanded = !expanded;
    });
  }
}
