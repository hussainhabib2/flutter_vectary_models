import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  static const List<Color> colors = [
    Colors.black54,
    Colors.brown,
    Colors.blueGrey,
    Colors.amber,
  ];

  static const List<double> sizes = [9.5, 10.5, 11, 12];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black54,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text(
            'Details',
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: Colors.black54,
                ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black54,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 360,
              width: double.infinity,
              child: WebView(
                debuggingEnabled: false,
                backgroundColor: Colors.transparent,
                initialUrl: 'https://app.vectary.com/p/7kXRGOXDuYiFvNZOurp4SB',
                javascriptMode: JavascriptMode.unrestricted,
              ),
            ),
            Text(
              'ME Clock 3',
              style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: Colors.black87,
                  ),
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.star_border_rounded,
                  color: Colors.black54,
                ),
                const SizedBox(width: 4),
                Text(
                  '4.9 / 5.0 ( 150 Reviews )',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.black54,
                      ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Colors',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.black54,
                            ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          4,
                          (index) => Container(
                            height: 25,
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            width: 25,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: colors[index]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sizes',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.black54,
                            ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          4,
                          (index) => Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Text(
                              sizes[index].toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    color: Colors.black54,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
        bottomNavigationBar: Row(
          children: [
            Expanded(
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Price',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.black54,
                            ),
                      ),
                      Text(
                        'Rs. 1499.00',
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                              color: Colors.black87,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Container(
                height: 70,
                color: const Color(0xff26B4D6),
                child: Center(
                  child: Text(
                    'Buy now',
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
