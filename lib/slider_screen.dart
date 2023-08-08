import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertutorial/slider_provider.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<SliderProvider>(context,listen: false);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<SliderProvider>(builder: (BuildContext context, value, Widget? child) {
            return Slider(
              min: 0,
              max: 1,
              value: value.value,onChanged: (val){
              value.setValue(val);
            },);
          },),

          Consumer<SliderProvider>(builder: (BuildContext context, value, Widget? child) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.lightBlueAccent.withOpacity(value.value)
                    ),
                    child: Center(
                      child: Text('Container 1'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.amber.withOpacity(value.value)
                    ),
                    child: Center(
                      child: Text('Container 2'),
                    ),
                  ),
                ),
              ],
            );
          },)


        ],
      ),
    );
  }
}
