import 'package:first_app/page/product_details_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<Map<String, dynamic>> productApi = [
    {
      "id" : '2',
      "image" : "https://static-01.daraz.com.bd/p/6b70980f8bfc09f2bff88bfab037117a.jpg",
      "product_name" : "Watch 2",
      "product_price" : "1400"

    },
    {
      "id" : 2,
      "image" : "https://static-01.daraz.com.bd/p/f47726913ef18767124cfbbe4a22dbbe.jpg",
      "product_name" : "Sunglass",
      "product_price" : "320"

    },
    {
      "id" : 2,
      "image" : "https://static-01.daraz.com.bd/p/06d0935525837230e36c5e5e6beb583f.jpg_200x200q80-product.jpg_.webp",
      "product_name" : "Cap",
      "product_price" : "120"

    },
    {
      "id" : 2,
      "image" : "https://static-01.daraz.com.bd/p/6b70980f8bfc09f2bff88bfab037117a.jpg",
      "product_name" : "Watch 2",
      "product_price" : "1400"

    },
    {
      "id" : 2,
      "image" : "https://static-01.daraz.com.bd/p/6b70980f8bfc09f2bff88bfab037117a.jpg",
      "product_name" : "Watch 2",
      "product_price" : "1400"

    },
    {
      "id" : 2,
      "image" : "https://static-01.daraz.com.bd/p/ea0644c4d94efc3e36756e97a7d0d1f1.jpg_200x200q80-product.jpg_.webp",
      "product_name" : "Money bag",
      "product_price" : "1400"

    },
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Kabir Boss', style: TextStyle(
          fontSize: 30,
          color: Colors.blue
        ),
        ),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.transparent,
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Humayon vai'),
            Text('01521529716'),
            Text('kabirhumaunkabir3@gmail.com'),


            SizedBox(height: 24,),


            // new Ui
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: productApi.length,
                itemBuilder: (context, int index){
                  return InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProductDetailsPage(data: productApi[index],)),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(4),
                      padding: EdgeInsets.all(8),
                      height: 200,
                      width: 150,
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
                          Expanded(
                            child: Image.network(productApi[index]['image'],
                              fit: BoxFit.contain,
                            ),
                          ),
                          Text(productApi[index]['product_name']),
                          Text(productApi[index]['product_price']),


                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
