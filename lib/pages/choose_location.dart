import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  int counter = 0;
  
  @override
  Widget build(BuildContext context) {
    print('Build Function Ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
            'Choose a location'
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            FlatButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.add_to_home_screen),
                label: Text('Home Screen')),
          RaisedButton(onPressed: (){setState(()
    {
            counter += 1;
          });
            },
    child: Text('Counter is $counter'),
          )
          ],
        ),
      ),
    );
  }
}
