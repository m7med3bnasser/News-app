import 'package:flutter/material.dart';
import 'package:news_app/Ui/home/categoryDetails/tabWidget.dart';
import 'package:news_app/Ui/home/nwes/newsListWidget.dart';

import '../../../model/sourcesResponse/Source.dart';



class SourceTasbsWidget extends StatefulWidget {
  List<Source> sources;

  SourceTasbsWidget(this.sources, {super.key});

  @override
  State<SourceTasbsWidget> createState() => _SourceTasbsWidgetState();
}

class _SourceTasbsWidgetState extends State<SourceTasbsWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.sources.length,
      child: Column(
        children: [
          SizedBox(height: 12,),
          TabBar(
            indicatorColor:Colors.transparent ,
              onTap: (newIndex) {
                selectedIndex = newIndex;
                setState(() {});
              },
              isScrollable: true,
              tabs: widget.sources
                  .map((source) => TabWidget(
                      source, widget.sources.indexOf(source) == selectedIndex))
                  .toList()),
          Expanded(child: NewsListWidget(widget.sources[selectedIndex]))
        ],
      ),
    );
  }
}
