
import 'package:flutter/material.dart';

class currencyconverter extends StatefulWidget
{
  const currencyconverter({super.key});
  @override
  State<currencyconverter> createState() => _currencyconverterstate();

}

class _currencyconverterstate extends State<currencyconverter>
{
  double result =0;
  final TextEditingController textEditingController = TextEditingController();
  void convert () {

    setState(() {
      result = double.parse(textEditingController.text)*83.81;
    });
  }
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context)
  {
    final border =  OutlineInputBorder(
      borderSide: const BorderSide(
        width: 1.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(30),

    );
    return  Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const  Text('Currency Convertor',style: TextStyle(color: Colors.white),),

        centerTitle: true,

      ),
      body:
      Center(
          child: Padding(

            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment:   MainAxisAlignment.center,
              children: [
                Text('₹ ${result!=0 ? result.toStringAsFixed(2):result.toStringAsFixed(0)}', style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                ),
                ),
                TextField(
                  controller: textEditingController,
                  decoration:  InputDecoration(
                    hintText: 'Enter the amount in USD',
                    hintStyle:  const TextStyle(
                      color: Colors.lightBlueAccent,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon:const  Icon(Icons.monetization_on),
                    iconColor: Colors.lightBlueAccent,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed:convert,
                  style:  TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    backgroundColor: (Colors.lightBlueAccent),
                    foregroundColor:(Colors.white),
                    minimumSize: const Size(double.infinity, 40),
                  ),
                  child: const Text('Convert') ,

                )
              ],
            ),
          )
      ),
    );
  }
}

