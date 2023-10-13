import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LiveHomeScreen extends StatefulWidget {
  const LiveHomeScreen({super.key});

  @override
  State<LiveHomeScreen> createState() => _LiveHomeScreenState();
}

class _LiveHomeScreenState extends State<LiveHomeScreen> {
  List<bool> selectedItems = List.generate(5, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selection Screen'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int selectedCount = selectedItems
              .where((item) => item)
              .length; // Count selected items

          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Selected Screens'),
                  actions: [
                    Column(

                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [

                        SizedBox(
                          height: 45,
                          child: Center(
                            child: Text(
                              'Number of Selected items $selectedCount',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                            child: Text('Close',style: TextStyle(color: Colors.blue), ),)
                      ],
                    )
                  ],
                );
              });
        },
        child: Icon(CupertinoIcons.arrow_right),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.separated(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                onTap: () {
                  selectedItems[index] = !selectedItems[index];
                  setState(() {});
                },
                title: Text('item ${index + 1}'),
                tileColor: selectedItems[index] ? Colors.blue : null,
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider(
                height: 4,
              );
            },
          )),
        ],
      ),
    );
  }
}
