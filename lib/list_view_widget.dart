import 'package:flutter/material.dart';
import 'detail_page.dart';
import 'data.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget>
    with AutomaticKeepAliveClientMixin {

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return ListView.builder(
      itemCount: travelData.length,
      itemBuilder: (context, index) {
        final item = travelData[index];
        return InkWell(
          onTap: () {
            Navigator.push(context,
              MaterialPageRoute(
                builder: (_) => DetailPage(item: item),
              ),
            );
          },
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: ListTile(
              leading: Image.network(item['image']!, width: 80, fit: BoxFit.cover),
              title: Text(item['title']!),
            ),
          ),
        );
      },
    );
  }
}
