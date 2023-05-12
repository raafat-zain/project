import 'package:aappii/utils/const.dart';
import 'package:aappii/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';

class SuppliersScreen extends StatelessWidget {
  const SuppliersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            itemBuilder: (context, index) {
              return buildSuppliers();
            },
            separatorBuilder: (context, index) {
              return Divider(
                color: grey,
                thickness: 1,
              );
            },
            itemCount: 10));
  }
}

Widget buildSuppliers() {
  return SizedBox(
    width: double.infinity,
    height: 100,
    child: Row(
      children: [
        SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(180),
              ),
              child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.network(
                    "https://th.bing.com/th/id/OIP.cThQeGlYsVaL26V5MfVbYAHaE7?pid=ImgDet&rs=1",
                    fit: BoxFit.cover,
                  )),
            ),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Column(
       //   mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 8.1,
            ),
            Text_u(
              overflow:TextOverflow.fade ,
              text: 'Name:',
              fontsize: 20,
              color: black,
              fontWeight: FontWeight.w500,
              
            ),
             Text_u(
              overflow:TextOverflow.fade ,
              text: 'company:',
              fontsize: 20,
              color: black,
              fontWeight: FontWeight.w500,
              
            ),
            SizedBox(
              height: 2.1,
            ),
            Text_u(
              overflow:TextOverflow.clip ,
              text: 'number:',
              fontsize: 20,
              color: black,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
         SizedBox(
              width: 125,
            ),
    //     IconButton(onPressed: () {}, icon: Icon(Icons.favorite,color: red,)
    // )],
]    ),
  );
}
  