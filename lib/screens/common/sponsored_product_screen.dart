import 'package:flutter/material.dart';

class SponsoredProduct extends StatelessWidget {
  const SponsoredProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){},
            child: Container(
              width: MediaQuery.of(context).size.width*0.30,
              height: 165,
              decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.black12)
              ),
              child:  const Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 70,
                    child: Image(
                      image: AssetImage('assets/images/img_12.png'),
                      fit: BoxFit.cover,),
                  ),
                  Text('Tea and Beverages',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                  Text('min 50% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                  Text('Best deals',style: TextStyle(fontSize: 12,color: Colors.black26),),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){},
            child: Container(
              width: MediaQuery.of(context).size.width*0.30,
              height: 165,
              decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.black12)
              ),
              child: const Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 70,
                    child: Image(image: AssetImage('assets/images/img_13.png'),fit: BoxFit.cover,),
                  ),
                  Text('Snacks & Biscuit',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                  Text('Up to 60% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                  Text('Limited time Offer',style: TextStyle(fontSize: 12,color: Colors.black26),),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width*0.30,
                height: 165,
                decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Colors.black12)
                ),
                child: const Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 54,
                      child: Image(
                        image: AssetImage('assets/images/img_14.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text('Oral Care',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                    Text('Up to 80% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                    Text('Big discounts',style: TextStyle(fontSize: 12,color: Colors.black26),),
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){},
            child: Container(
              width: MediaQuery.of(context).size.width*0.30,
              height: 165,
              decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.black12)
              ),
              child: const Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 70,
                    child: Image(
                      image: AssetImage('assets/images/img_12.png'),
                      fit: BoxFit.cover,),
                  ),
                  Text('Tea and Beverages',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                  Text('min 50% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                  Text('Best deals',style: TextStyle(fontSize: 12,color: Colors.black26),),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){},
            child: Container(
              width: MediaQuery.of(context).size.width*0.30,
              height: 165,
              decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.black12)
              ),
              child: const Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 70,
                    child: Image(image: AssetImage('assets/images/img_13.png'),fit: BoxFit.cover,),
                  ),
                  Text('Snacks & Biscuit',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                  Text('Up to 60% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                  Text('Limited time Offer',style: TextStyle(fontSize: 12,color: Colors.black26),),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){},
            child: Container(
              width: MediaQuery.of(context).size.width*0.30,
              height: 165,
              decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.black12)
              ),
              child: const Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 70,
                    child: Image(
                      image: AssetImage('assets/images/img_14.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text('Oral Care',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                  Text('Up to 80% off',style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                  Text('Big discounts',style: TextStyle(fontSize: 12,color: Colors.black26),),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
