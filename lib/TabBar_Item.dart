import 'package:flutter/material.dart';

class TabBarItemRenderer extends StatelessWidget {





  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
//        splashColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(25.0),


        child: Container(
          padding: const EdgeInsets.all(15.0),
          child: Text('Graphics',
            ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.blue,
          ),

        ),
      ),
    );
  }
}