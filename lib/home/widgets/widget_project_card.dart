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
                        crossFadeState: expanded
                            ? CrossFadeState.showSecond
                            : CrossFadeState.showFirst,
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
          child: Container(
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: _toggleExpanded,
              child: Card(
                color: Colors.white,
                elevation: 4,
                shape: const CircleBorder(),
                child: Icon(
                  !expanded
                      ? Icons.keyboard_arrow_down_rounded
                      : Icons.keyboard_arrow_up_rounded,
                  color: Colors.grey,
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
