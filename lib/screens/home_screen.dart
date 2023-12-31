import 'package:flipkart_home/screens/flipkart.dart';
import 'package:flipkart_home/screens/groceries.dart';
import 'package:flutter/material.dart';


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var conColors = Colors.green.withOpacity(0.4);
  int _selectedItem=0;
  var bgColor = Colors.blue;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50,),
          Container(
            padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
            decoration: BoxDecoration(
              border: Border.all(width: 0,color: Colors.transparent)
            ),
            child: ToggleButtons(
              isSelected: List.generate(2, (index) => index == _selectedItem),
              onPressed: (index){
                setState(() {
                  _selectedItem = index;
                });
              },
              borderRadius: BorderRadius.circular(16),
              hoverColor: Colors.transparent,
              fillColor: Colors.transparent,
              renderBorder: false,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,0,10,0),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.45,
                    height: 60,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                        color: _selectedItem==0?Colors.blue:Colors.blue.withOpacity(0.4)
                    ),
                    child: const Center(child: Image(image: AssetImage('assets/images/logos/img_1.png'),width: 60,height: 50,)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,0,0),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.45,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: _selectedItem==1?Colors.green:Colors.green.withOpacity(0.4)
                    ),
                    child: const Center(child: Image(image: AssetImage('assets/images/logos/img.png'),width: 60,height: 50,)),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: _selectedItem==0?const FlipkartScreen():const GroceryScreen())
        ],
      ),
    );
  }
}
