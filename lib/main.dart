import 'package:flutter/material.dart'; //imports need packages to run the app

void main() => runApp(MyApp());  // The main function that is ran, runApp is the name of the function which takes any widget as argument and creates a layout which fills the screen

class MyApp extends StatelessWidget { //Stateless widget which means it only contains static info and will never change
  @override
  Widget build(BuildContext context) { // Build method which you explain the UI, Context references the location in the widget tree (ie the address of the widget)
    return MaterialApp(
      title: 'Flutter Demo', //Title the app (not shown)
      theme: ThemeData( //Brings the data of the theme
        primarySwatch: Colors.green, //Changes the color of the app
      ),
      home: MyHomePage(title: 'CRACKHEAD'), //Titles the actual app
    );
  }
}

class MyHomePage extends StatefulWidget { //Constructor
  MyHomePage({Key key, this.title}) : super(key: key); //title and key for params

  final String title; //Ends a constructor

  @override
  _MyHomePageState createState() => _MyHomePageState(); //Sets home page that automatically appears when you run the app
}

class _MyHomePageState extends State<MyHomePage> { //Constructor
  int _counter = 0; //Sets the counter to 0 on Start Up

  void _incrementCounter() { //Method for increasing the counter
    setState(() {
      _counter++; //Increases the counter by 1
    });
  }
  void _decreaseCounter() { //Method for decreasing the counter
    setState(() {
      _counter--; //Decreases the counter by 1
    });
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold( //Scaffold is a type of widget which implements the basic material design visual layout structure of the flutter app
      appBar: AppBar( //top of scaffold, needed, defines what has to be displayed at the top of the screen
        title: Text(widget.title), //allows you to add a title
      ),
      body: Center( //Center aligns the text to the center of the page
        child: Column( //Column displays child in a vertical array, Child to a parent widget, smaller version of parent widget
          mainAxisAlignment: MainAxisAlignment.center, //Puts the counter in the middle of the screen
          children: <Widget>[ // Smaller version of parent widget
            Text( //Widget for displaying text on the app
              'HOW MUCH CRACK WE SMOKING?!:', //Title of the counter (middle of screen)
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1, //Displays text in a different color than the theme
            ),
          ],
        ),
      ),
      floatingActionButton: Stack (
        children: <Widget>[
          Padding(padding: EdgeInsets.only(left:38), //Sets the left side point
            child: Align( //widget to align button to a certain area
              alignment: Alignment.bottomLeft, //Aligns the button to the bottom left
              child: FloatingActionButton( //Smaller widget, widget makes a button
                onPressed: _decreaseCounter, // Calls the method for decreasing the counter
                tooltip: 'LESS CRACK', // Name of button decreases counter
                child: Icon(Icons.mood_bad), //Changes the shape/icon of the button
      ),
            ),),
      Align( //Parent align widget
        alignment: Alignment.bottomRight, //Sets button to the bottom right
        child: FloatingActionButton( //Smaller widget, widget makes a button
          onPressed: _incrementCounter, // Calls the increasing method
          tooltip: 'MORE CRACK', // Name of the button to increase the count
          child: Icon(Icons.mood), // Changes the shape/icon of the button
            ),
          )
        ]
      ),
    );
  }
}
