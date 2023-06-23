import 'package:flutter/material.dart';

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
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: InkWell(
            onTap: _toggleExpanded,
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
                      Text(
                        widget.title,
                        style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
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
        Visibility(
          visible: !expanded,
          child: Positioned(
            bottom: 1,
            right: MediaQuery.of(context).size.width / 2,
            child: TextButton(
              onPressed: _toggleExpanded,
              child: const Card(
                color: Colors.white,
                elevation: 4,
                shape: CircleBorder(),
                child: Icon(Icons.keyboard_arrow_down_rounded,color: Colors.grey,),
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
