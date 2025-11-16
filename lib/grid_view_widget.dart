import 'package:flutter/material.dart';
import 'detail_page.dart';
import 'data.dart';

class GridViewWidget extends StatefulWidget {
  const GridViewWidget({super.key});

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget>
    with AutomaticKeepAliveClientMixin {

  @override
  bool get wantKeepAlive => true; // ❗ grid juga tidak hilang

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: travelData.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        final item = travelData[index];
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => DetailPage(item: item)),
            );
          },
          child: Card(
            elevation: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Image.network(item['image']!, fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    item["title"]!,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
