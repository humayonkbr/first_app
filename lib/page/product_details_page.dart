import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  Map<String, dynamic> data;
   ProductDetailsPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product details page'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(4),
              padding: EdgeInsets.all(8),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.grey.shade400
                  ),
                  borderRadius: BorderRadius.circular(16)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 500,
                    child: Image.network(data['image'],
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(data['product_name']),
                  Text(data['product_price']),

                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.blue
              ),
              child: Text('Back'),
            ),
          )
        ],
      ),
    );
  }
}
