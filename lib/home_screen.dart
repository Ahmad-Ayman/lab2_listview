import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> listOfStrings = [
    'Rabi3',
    'Magod',
    'Namosa',
    'D',
    'Pola',
    'Anton',
    'Ananasa',
    'T',
    'Ahmed',
    'Test',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  // Responsive width to take all the screen width
                  color: Colors.amberAccent,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  // Responsive width to take all the screen width
                  color: Colors.teal,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  // Responsive width to take all the screen width
                  color: Colors.redAccent,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  // Responsive width to take all the screen width
                  color: Colors.orangeAccent,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  // Responsive width to take all the screen width
                  color: Colors.purpleAccent,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  // Responsive width to take all the screen width
                  color: Colors.greenAccent,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // Expanded(
          //   child: Container(
          //     height: MediaQuery.of(context).size.height,
          //     child: ListView(
          //       scrollDirection: Axis.vertical,
          //       children: [
          //         Container(
          //           height: MediaQuery.of(context).size.height * 0.2,
          //           // Responsive width to take all the screen width
          //           color: Colors.amberAccent,
          //         ),
          //         Container(
          //           height: MediaQuery.of(context).size.height * 0.2,
          //           // Responsive width to take all the screen width
          //           color: Colors.teal,
          //         ),
          //         Container(
          //           height: MediaQuery.of(context).size.height * 0.2,
          //           // Responsive width to take all the screen width
          //           color: Colors.redAccent,
          //         ),
          //         Container(
          //           height: MediaQuery.of(context).size.height * 0.2,
          //           // Responsive width to take all the screen width
          //           color: Colors.orangeAccent,
          //         ),
          //         Container(
          //           height: MediaQuery.of(context).size.height * 0.2,
          //           // Responsive width to take all the screen width
          //           color: Colors.purpleAccent,
          //         ),
          //         Container(
          //           height: MediaQuery.of(context).size.height * 0.2,
          //           // Responsive width to take all the screen width
          //           color: Colors.greenAccent,
          //         ),
          //       ],
          //     ),
          //   ),
          // ),

          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                // separatorBuilder: (context, index) {
                //   return const Divider(
                //     height: 1,
                //     thickness: 2,
                //     color: Colors.redAccent,
                //   );
                // },
                // shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.green,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(8),
                    child: Text(' Name : ${listOfStrings[index]}'),
                  );
                },
                itemCount: listOfStrings.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
