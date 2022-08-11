import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vibration/vibration.dart';


void main() {
  runApp(const convertor());
}
//splash screen page
class convertor extends StatelessWidget {
  const convertor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'CONVERTOR',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.amberAccent,
        ),
        home: AnimatedSplashScreen(
          splash: Icon(
              Icons.calculate,size:100
          ),
          backgroundColor: Colors.amberAccent,// use any widget here
          nextScreen: homepage(),
          splashTransition: SplashTransition.rotationTransition,
          duration: 3000,

        )

    );
  }
}
//homepage
class homepage extends StatelessWidget{
  const homepage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          centerTitle: true,
          title: Text(' CONVERTOR ') ,
          titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const checkpage()));
              },
            )
          ],
        ),
        body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:<Widget>[
              Text("choose your operation-",style: GoogleFonts.oleoScriptSwashCaps(color: Colors.red[400],fontSize: 40)),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, //background color of button
                    side: BorderSide(width:3, color:Colors.brown), //border width and color
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(20) //content padding inside button
                ),

                onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const checkpage()));
                },
                child: Row( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.check_box_outlined,size: 50),
                    Text("CHECKER",style: TextStyle(color: Colors.white,fontSize: 40))
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, //background color of button
                    side: BorderSide(width:3, color:Colors.brown), //border width and color
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(20) //content padding inside button
                ),

                onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const calcpage()));
                },
                child: Row( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.calculate_outlined,size:50),
                    Text("CALCULATOR", style: TextStyle(color: Colors.white,fontSize: 40))
                  ],
                ),
              ),
            ],
          ),
        )
    );

  }
}
//calcpage
class calcpage extends StatelessWidget{
  const calcpage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          centerTitle: true,
          title: Text(' CALCULATOR ') ,
          titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
              },
            )
          ],
        ),
        body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:<Widget>[
              Text("choose your field-",style: GoogleFonts.oleoScriptSwashCaps(color: Colors.red[400],fontSize: 40)),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent, //background color of button
                      side: BorderSide(width:3, color:Colors.brown), //border width and color
                      elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(30)
                      ),
                      padding: EdgeInsets.all(20) //content padding inside button
                  ),

                  onPressed: (){
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => tempmenu()));
                  },
                  child: Text("TEMPERATURE", style: TextStyle(color: Colors.white,fontSize: 40))

              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent, //background color of button
                      side: BorderSide(width:3, color:Colors.brown), //border width and color
                      elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(30)
                      ),
                      padding: EdgeInsets.all(20) //content padding inside button
                  ),

                  onPressed: (){
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => speedmenu()));
                  },
                  child: Text("SPEED", style: TextStyle(color: Colors.white,fontSize: 40))

              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent, //background color of button
                      side: BorderSide(width:3, color:Colors.brown), //border width and color
                      elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(30)
                      ),
                      padding: EdgeInsets.all(20) //content padding inside button
                  ),

                  onPressed: (){
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => lengthmenu()));
                  },
                  child: Text("LENGTH", style: TextStyle(color: Colors.white,fontSize: 40))

              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent, //background color of button
                      side: BorderSide(width:3, color:Colors.brown), //border width and color
                      elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(30)
                      ),
                      padding: EdgeInsets.all(20) //content padding inside button
                  ),

                  onPressed: (){
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => weightmenu()));
                  },
                  child: Text("WEIGHT", style: TextStyle(color: Colors.white,fontSize: 40))

              ),
            ],
          ),
        )
    );

  }
}
//tempmenu
class tempmenu extends StatelessWidget{
  const tempmenu({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          centerTitle: true,
          title: Text('TEMPERATURE OPS ') ,
          titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
              },
            )
          ],
        ),
        body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:<Widget>[
              Text("Given value is in -",style: GoogleFonts.oleoScriptSwashCaps(color: Colors.red[400],fontSize: 40)),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, //background color of button
                    side: BorderSide(width:3, color:Colors.brown), //border width and color
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(20) //content padding inside button
                ),

                onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const celpage()));
                },
                child: Row( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.thermostat_outlined,size: 50),
                    Text("CELSIUS",style: TextStyle(color: Colors.white,fontSize: 40))
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, //background color of button
                    side: BorderSide(width:3, color:Colors.brown), //border width and color
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(20) //content padding inside button
                ),

                onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const farenpage()));
                },
                child: Row( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.thermostat_outlined,size:50),
                    Text("FARENHEIT", style: TextStyle(color: Colors.white,fontSize: 40))
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, //background color of button
                    side: BorderSide(width:3, color:Colors.brown), //border width and color
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(20) //content padding inside button
                ),

                onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const kelpage()));
                },
                child: Row( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.thermostat_outlined,size: 50),
                    Text("KELVIN",style: TextStyle(color: Colors.white,fontSize: 40))
                  ],
                ),
              ),
            ],
          ),
        )
    );

  }
}
//speedmenu
class speedmenu extends StatelessWidget{
  const speedmenu({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          centerTitle: true,
          title: Text('SPEED OPS ') ,
          titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
              },
            )
          ],
        ),
        body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:<Widget>[
              Text("Given value is in -",style: GoogleFonts.oleoScriptSwashCaps(color: Colors.red[400],fontSize: 40)),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, //background color of button
                    side: BorderSide(width:3, color:Colors.brown), //border width and color
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(20) //content padding inside button
                ),

                onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const mspage()));
                },
                child: Row( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.compare_arrows,size: 50),
                    Text("meters/sec",style: TextStyle(color: Colors.white,fontSize: 40))
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, //background color of button
                    side: BorderSide(width:3, color:Colors.brown), //border width and color
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(20) //content padding inside button
                ),

                onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const khpage()));
                },
                child: Row( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.compare_arrows,size:50),
                    Text("kilometers/hour", style: TextStyle(color: Colors.white,fontSize: 40))
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, //background color of button
                    side: BorderSide(width:3, color:Colors.brown), //border width and color
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(20) //content padding inside button
                ),

                onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const mphpage()));
                },
                child: Row( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.compare_arrows,size: 50),
                    Text("miles/hour",style: TextStyle(color: Colors.white,fontSize: 40))
                  ],
                ),
              ),
            ],
          ),
        )
    );

  }
}
//speedmenu
class lengthmenu extends StatelessWidget{
  const lengthmenu({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          centerTitle: true,
          title: Text('LENGTH OPS ') ,
          titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
              },
            )
          ],
        ),
        body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:<Widget>[
              Text("Given value is in -",style: GoogleFonts.oleoScriptSwashCaps(color: Colors.red[400],fontSize: 40)),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, //background color of button
                    side: BorderSide(width:3, color:Colors.brown), //border width and color
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(20) //content padding inside button
                ),

                onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const mpage()));
                },
                child: Row( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.cable,size: 50),
                    Text("meters",style: TextStyle(color: Colors.white,fontSize: 40))
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, //background color of button
                    side: BorderSide(width:3, color:Colors.brown), //border width and color
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(20) //content padding inside button
                ),

                onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const cmpage()));
                },
                child: Row( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.cable,size:50),
                    Text("CENTIMETERS", style: TextStyle(color: Colors.white,fontSize: 40))
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, //background color of button
                    side: BorderSide(width:3, color:Colors.brown), //border width and color
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(20) //content padding inside button
                ),

                onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const kmpage()));
                },
                child: Row( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.cable,size: 50),
                    Text("KILOMETERS",style: TextStyle(color: Colors.white,fontSize: 40))
                  ],
                ),
              ),
            ],
          ),
        )
    );

  }
}
//lengthmenu
class weightmenu extends StatelessWidget{
  const weightmenu({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          centerTitle: true,
          title: Text('WEIGHT OPS ') ,
          titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
              },
            )
          ],
        ),
        body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:<Widget>[
              Text("Given value is in -",style: GoogleFonts.oleoScriptSwashCaps(color: Colors.red[400],fontSize: 40)),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, //background color of button
                    side: BorderSide(width:3, color:Colors.brown), //border width and color
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(20) //content padding inside button
                ),

                onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const kgpage()));
                },
                child: Row( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.scale_outlined,size: 50),
                    Text("KILOGRAMS",style: TextStyle(color: Colors.white,fontSize: 40))
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, //background color of button
                    side: BorderSide(width:3, color:Colors.brown), //border width and color
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(20) //content padding inside button
                ),

                onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const gpage()));
                },
                child: Row( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.scale_outlined,size:50),
                    Text("GRAMS", style: TextStyle(color: Colors.white,fontSize: 40))
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, //background color of button
                    side: BorderSide(width:3, color:Colors.brown), //border width and color
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(20) //content padding inside button
                ),

                onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const mgpage()));
                },
                child: Row( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.scale_outlined,size: 50),
                    Text("MILLIGRAMS",style: TextStyle(color: Colors.white,fontSize: 40))
                  ],
                ),
              ),
            ],
          ),
        )
    );

  }
}
//weightmenu

//temp operations
double  celsius1( double a ){
  double f =0;
  f=a*(9/5)+32;
  return f;
}
double celsius2 (double a){
  double k =0;
  k=a+273;
  return k;
}
class celpage extends StatefulWidget {
  const celpage({super.key});

  @override
  State<celpage> createState() => _celpageState();
}
class _celpageState extends State<celpage> {

  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(' CELSIUS OPS ') ,
        titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
            },
          )
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          keyboardType:TextInputType.numberWithOptions(decimal: true),
          controller: myController,
        ),
      ),
      floatingActionButton:SizedBox(
          height:100,
          width:100,
          child :FloatingActionButton(
              backgroundColor: Colors.red,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content:Center(
                          child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Text("TEMPERATURE IN FARENHEIT:"),
                                Text(celsius1(double.parse(myController.text)).toString()),
                                Text("TEMPERATURE IN KELVIN:"),
                                Text(celsius2(double.parse(myController.text)).toString()),
                              ]
                          )
                      ),
                      actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                        child: Text('OK'),
                      ),
                      ],
                    );
                  },
                );
              },
              child:Text("SUBMIT")
          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

double  kelvin1( double b ){
  double c =0;
  c=b-273;
  return c;

}
double  kelvin2( double b ){
  double f =0;
  f=((b-273)*(9/5))+32;
  return f;

}
class kelpage extends StatefulWidget {
  const kelpage({super.key});

  @override
  State<kelpage> createState() => _kelpageState();
}
class _kelpageState extends State<kelpage> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController2= TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(' KELVIN OPS ') ,
        titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          keyboardType:TextInputType.numberWithOptions(decimal: true),
          controller: myController2,
        ),
      ),
      floatingActionButton:SizedBox(
          height:100,
          width:100,
          child : FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {

                  return AlertDialog(
                    content:Center(
                        child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text("TEMPERATURE IN CELSIUS:"),
                              Text(kelvin1(double.parse(myController2.text)).toString()),
                              Text("TEMPERATURE IN FARENHEIT:"),
                              Text(kelvin2(double.parse(myController2.text)).toString()),
                            ]
                        )
                    ),
                    actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                      child: Text('OK'),
                    ),
                    ],
                  );

                },
              );
            },
            child: Text("SUBMIT"),

          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

double  faren1( double d ){
  double c =0;
  c=(d-32)*(5/9);
  return c;

}
double  faren2( double d ){
  double k =0;
  k=((d-32)*(5/9))+273;
  return k;

}
class farenpage extends StatefulWidget {
  const farenpage({super.key});

  @override
  State<farenpage> createState() => _farenpageState();
}
class _farenpageState extends State<farenpage> {
  final myController3 = TextEditingController();

  @override
  void dispose() {
    myController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(' FARENHEIT OPS ') ,
        titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          keyboardType:TextInputType.numberWithOptions(decimal: true),
          controller: myController3,
        ),
      ),
      floatingActionButton:SizedBox(
          height:100,
          width:100,
          child : FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content:Center(
                        child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text("TEMPERATURE IN CELSIUS:"),
                              Text(faren1(double.parse(myController3.text)).toString()),
                              Text("TEMPERATURE IN KELVIN:"),
                              Text(faren2(double.parse(myController3.text)).toString()),
                            ]
                        )
                    ),
                    actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                      child: Text('OK'),
                    ),
                    ],
                  );

                },
              );
            },
            child: Text("SUBMIT"),
          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

//speed operations
double ms2kh (double i){
  double j=0;
  j=i*(18/5);
  return j;
}
double ms2mph (double i){
  double j=0;
  j=i*2.24;
  return j;
}
class mspage extends StatefulWidget {
  const mspage({super.key});

  @override
  State<mspage> createState() => _mspageState();
}
class _mspageState extends State<mspage> {
  final myController3 = TextEditingController();

  @override
  void dispose() {
    myController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(' METER/SEC OPS  ') ,
        titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          keyboardType:TextInputType.numberWithOptions(decimal: true),
          controller: myController3,
        ),
      ),
      floatingActionButton:SizedBox(
          height:100,
          width:100,
          child : FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content:Center(
                        child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text("SPEED IN KMPH:"),
                              Text(ms2kh(double.parse(myController3.text)).toString()),
                              Text("SPEED IN MPH"),
                              Text(ms2mph(double.parse(myController3.text)).toString()),
                            ]
                        )
                    ),
                    actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                      child: Text('OK'),
                    ),
                    ],
                  );

                },
              );
            },
            child: Text("SUBMIT"),
          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

double kh2ms (double i){
  double j=0;
  j=i*(5/18);
  return j;
}
double kh2mph (double i){
  double j=0;
  j=i*((18/5))*2.24;
  return j;
}
class khpage extends StatefulWidget {
  const khpage({super.key});

  @override
  State<khpage> createState() => _khpageState();
}
class _khpageState extends State<khpage> {

  final myController3 = TextEditingController();

  @override
  void dispose() {
    myController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(' KILOMETER/HOUR OPS ') ,
        titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          keyboardType:TextInputType.numberWithOptions(decimal: true),
          controller: myController3,
        ),
      ),
      floatingActionButton:SizedBox(
          height:100,
          width:100,
          child : FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content:Center(
                        child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text("SPEED IN MS:"),
                              Text(kh2ms(double.parse(myController3.text)).toString()),
                              Text("SPEED IN MPH:"),
                              Text(kh2mph(double.parse(myController3.text)).toString()),
                            ]
                        )
                    ),
                    actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                      child: Text('OK'),
                    ),
                    ],
                  );

                },
              );
            },
            child: Text("SUBMIT"),
          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}


double mph2ms (double i){
  double j=0;
  j=i/2.24;
  return j;
}
double mph2kh (double i){
  double j=0;
  j=(i*2.24)*(5/18);
  return j;
}
class mphpage extends StatefulWidget {
  const mphpage({super.key});

  @override
  State<mphpage> createState() => _mphpageState();
}
class _mphpageState extends State<mphpage> {
  final myController3 = TextEditingController();

  @override
  void dispose() {
    myController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(' MILESPERHOUR OPS ') ,
        titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          keyboardType:TextInputType.numberWithOptions(decimal: true),
          controller: myController3,
        ),
      ),
      floatingActionButton:SizedBox(
          height:100,
          width:100,
          child : FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content:Center(
                        child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text("SPEED IN MS:"),
                              Text(mph2ms(double.parse(myController3.text)).toString()),
                              Text("SPEED IN KMPH:"),
                              Text(mph2kh(double.parse(myController3.text)).toString()),
                            ]
                        )
                    ),
                    actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                      child: Text('OK'),
                    ),
                    ],
                  );

                },
              );
            },
            child: Text("SUBMIT"),
          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

//length operations
double m2km (double i){
  double j=0;
  j=i/1000;
  return j;
}
double m2cm (double i){
  double j=0;
  j=i*1000;
  return j;
}
class mpage extends StatefulWidget {
  const mpage({super.key});

  @override
  State<mpage> createState() => _mpageState();
}
class _mpageState extends State<mpage> {
  final myController3 = TextEditingController();

  @override
  void dispose() {
    myController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(' METER OPS ') ,
        titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          keyboardType:TextInputType.numberWithOptions(decimal: true),
          controller: myController3,
        ),
      ),
      floatingActionButton:SizedBox(
          height:100,
          width:100,
          child : FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content:Center(
                        child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text("LENGTH IN CM:"),
                              Text(m2cm(double.parse(myController3.text)).toString()),
                              Text("LENGTH IN KM:"),
                              Text(m2km(double.parse(myController3.text)).toString()),
                            ]
                        )
                    ),
                    actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                      child: Text('OK'),
                    ),
                    ],
                  );

                },
              );
            },
            child: Text("SUBMIT"),
          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

double km2m (double i){
  double j=0;
  j=i*1000;
  return j;
}
double km2cm (double i){
  double j=0;
  j=i*1000000;
  return j;
}
class kmpage extends StatefulWidget {
  const kmpage({super.key});

  @override
  State<kmpage> createState() => _kmpageState();
}
class _kmpageState extends State<kmpage> {
  final myController3 = TextEditingController();

  @override
  void dispose() {
    myController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(' KILOMETER OPS ') ,
        titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          keyboardType:TextInputType.numberWithOptions(decimal: true),
          controller: myController3,
        ),
      ),
      floatingActionButton:SizedBox(
          height:100,
          width:100,
          child : FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content:Center(
                        child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text("LENGTH IN CM:"),
                              Text(km2cm(double.parse(myController3.text)).toString()),
                              Text("LENGTH IN M:"),
                              Text(km2m(double.parse(myController3.text)).toString()),
                            ]
                        )
                    ),
                    actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                      child: Text('OK'),
                    ),
                    ],
                  );

                },
              );
            },
            child: Text("SUBMIT"),
          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}


double cm2m (double i){
  double j=0;
  j=i/1000;
  return j;
}
double cm2km (double i){
  double j=0;
  j=i/1000000;
  return j;
}
class cmpage extends StatefulWidget {
  const cmpage({super.key});

  @override
  State<cmpage> createState() => _cmpageState();
}
class _cmpageState extends State<cmpage> {
  final myController3 = TextEditingController();

  @override
  void dispose() {
    myController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(' CENTIMETER OPS ') ,
        titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          keyboardType:TextInputType.numberWithOptions(decimal: true),
          controller: myController3,
        ),
      ),
      floatingActionButton:SizedBox(
          height:100,
          width:100,
          child : FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content:Center(
                        child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text("LENGTH IN M:"),
                              Text(cm2m(double.parse(myController3.text)).toString()),
                              Text("LENGTH IN KM:"),
                              Text(cm2km(double.parse(myController3.text)).toString()),
                            ]
                        )
                    ),
                    actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                      child: Text('OK'),
                    ),
                    ],
                  );

                },
              );
            },
            child: Text("SUBMIT"),
          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

//wt operations
double kg2g(double i){
  double a =0;
  a=i*1000;
  return a;
}
double kg2mg(double i){
  double a =0;
  a=i*1000*1000;
  return a;
}
class kgpage extends StatefulWidget {
  const kgpage({super.key});

  @override
  State<kgpage> createState() => _kgpageState();
}
class _kgpageState extends State<kgpage> {
  final myController3 = TextEditingController();

  @override
  void dispose() {
    myController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(' KILOGRAM OPS ') ,
        titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          keyboardType:TextInputType.numberWithOptions(decimal: true),
          controller: myController3,
        ),
      ),
      floatingActionButton:SizedBox(
          height:100,
          width:100,
          child : FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content:Center(
                        child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text("WEIGHT IN MG:"),
                              Text(kg2mg(double.parse(myController3.text)).toString()),
                              Text("WEIGHT IN G:"),
                              Text(kg2g(double.parse(myController3.text)).toString()),
                            ]
                        )
                    ),
                    actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                      child: Text('OK'),
                    ),
                    ],
                  );

                },
              );
            },
            child: Text("SUBMIT"),
          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

double g2kg(double i){
  double a =0;
  a=i/1000;
  return a;
}
double g2mg(double i){
  double a =0;
  a=i*1000;
  return a;
}
class gpage extends StatefulWidget {
  const gpage({super.key});

  @override
  State<gpage> createState() => _gpageState();
}
class _gpageState extends State<gpage> {
  final myController3 = TextEditingController();

  @override
  void dispose() {
    myController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(' GRAM OPS ') ,
        titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          keyboardType:TextInputType.numberWithOptions(decimal: true),
          controller: myController3,
        ),
      ),
      floatingActionButton:SizedBox(
          height:100,
          width:100,
          child : FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content:Center(
                        child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text("WEIGHT IN KG:"),
                              Text(g2kg(double.parse(myController3.text)).toString()),
                              Text("WEIGHT IN MG:"),
                              Text(g2mg(double.parse(myController3.text)).toString()),
                            ]
                        )
                    ),
                    actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                      child: Text('OK'),
                    ),
                    ],
                  );

                },
              );
            },
            child: Text("SUBMIT"),
          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

double mg2g(double i){
  double a =0;
  a=i/1000;
  return a;
}
double mg2kg(double i){
  double a =0;
  a=(i/1000)/1000;
  return a;
}
class mgpage extends StatefulWidget {
  const mgpage({super.key});

  @override
  State<mgpage> createState() => _mgpageState();
}
class _mgpageState extends State<mgpage> {
  final myController3 = TextEditingController();

  @override
  void dispose() {
    myController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(' MILIGRAM OPS ') ,
        titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          keyboardType:TextInputType.numberWithOptions(decimal: true),
          controller: myController3,
        ),
      ),
      floatingActionButton:SizedBox(
          height:100,
          width:100,
          child : FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content:Center(
                        child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text("WEIGHT IN G:"),
                              Text(mg2g(double.parse(myController3.text)).toString()),
                              Text("WEIGHT IN KG:"),
                              Text(mg2kg(double.parse(myController3.text)).toString()),
                            ]
                        )
                    ),
                    actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                      child: Text('OK'),
                    ),
                    ],
                  );

                },
              );
            },
            child: Text("SUBMIT"),
          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}


//chker page
class checkpage extends StatelessWidget{
  const checkpage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          centerTitle: true,
          title: Text(' CHECKER ') ,
          titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
              },
            )
          ],
        ),
        body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:<Widget>[
              Text("choose your field-",style: GoogleFonts.oleoScriptSwashCaps(color: Colors.red[400],fontSize: 40)),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent, //background color of button
                      side: BorderSide(width:3, color:Colors.brown), //border width and color
                      elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(30)
                      ),
                      padding: EdgeInsets.all(20) //content padding inside button
                  ),

                  onPressed: (){
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => tempchkmenu()));
                  },
                  child: Text("TEMPERATURE", style: TextStyle(color: Colors.white,fontSize: 40))

              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent, //background color of button
                      side: BorderSide(width:3, color:Colors.brown), //border width and color
                      elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(30)
                      ),
                      padding: EdgeInsets.all(20) //content padding inside button
                  ),

                  onPressed: (){
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) =>speedchkmenu()));
                  },
                  child: Text("SPEED", style: TextStyle(color: Colors.white,fontSize: 40))

              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent, //background color of button
                      side: BorderSide(width:3, color:Colors.brown), //border width and color
                      elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(30)
                      ),
                      padding: EdgeInsets.all(20) //content padding inside button
                  ),

                  onPressed: (){
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => lengthchkmenu()));
                  },
                  child: Text("LENGTH", style: TextStyle(color: Colors.white,fontSize: 40))

              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent, //background color of button
                      side: BorderSide(width:3, color:Colors.brown), //border width and color
                      elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(30)
                      ),
                      padding: EdgeInsets.all(20) //content padding inside button
                  ),

                  onPressed: (){
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) =>weightchkmenu()));
                  },
                  child: Text("WEIGHT", style: TextStyle(color: Colors.white,fontSize: 40))

              ),
            ],
          ),
        )
    );

  }
}
//tempmenuck
class tempchkmenu extends StatelessWidget{
  const tempchkmenu({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          centerTitle: true,
          title: Text('TEMPERATURE OPS ') ,
          titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
              },
            )
          ],
        ),
        body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:<Widget>[
              Text("Given value is in -",style: GoogleFonts.oleoScriptSwashCaps(color: Colors.red[400],fontSize: 40)),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, //background color of button
                    side: BorderSide(width:3, color:Colors.brown), //border width and color
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(20) //content padding inside button
                ),

                onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const celchkpage()));
                },
                child: Row( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.thermostat_outlined,size: 50),
                    Text("CELSIUS",style: TextStyle(color: Colors.white,fontSize: 40))
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, //background color of button
                    side: BorderSide(width:3, color:Colors.brown), //border width and color
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(20) //content padding inside button
                ),

                onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const farenchkpage()));
                },
                child: Row( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.thermostat_outlined,size:50),
                    Text("FARENHEIT", style: TextStyle(color: Colors.white,fontSize: 40))
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, //background color of button
                    side: BorderSide(width:3, color:Colors.brown), //border width and color
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(20) //content padding inside button
                ),

                onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const kelchkpage()));
                },
                child: Row( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.thermostat_outlined,size: 50),
                    Text("KELVIN",style: TextStyle(color: Colors.white,fontSize: 40))
                  ],
                ),
              ),
            ],
          ),
        )
    );

  }
}
//tempmenu
class speedchkmenu extends StatelessWidget{
  const speedchkmenu({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          centerTitle: true,
          title: Text('SPEED OPS ') ,
          titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
              },
            )
          ],
        ),
        body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:<Widget>[
              Text("Given value is in -",style: GoogleFonts.oleoScriptSwashCaps(color: Colors.red[400],fontSize: 40)),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, //background color of button
                    side: BorderSide(width:3, color:Colors.brown), //border width and color
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(20) //content padding inside button
                ),

                onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const mschkpage()));
                },
                child: Row( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.compare_arrows,size: 50),
                    Text("meters/sec",style: TextStyle(color: Colors.white,fontSize: 40))
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, //background color of button
                    side: BorderSide(width:3, color:Colors.brown), //border width and color
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(20) //content padding inside button
                ),

                onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const khchkpage()));
                },
                child: Row( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.compare_arrows,size:50),
                    Text("kilometers/hour", style: TextStyle(color: Colors.white,fontSize: 40))
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, //background color of button
                    side: BorderSide(width:3, color:Colors.brown), //border width and color
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(20) //content padding inside button
                ),

                onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const mphchkpage()));
                },
                child: Row( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.compare_arrows,size: 50),
                    Text("miles/hour",style: TextStyle(color: Colors.white,fontSize: 40))
                  ],
                ),
              ),
            ],
          ),
        )
    );

  }
}
//speedmenu
class lengthchkmenu extends StatelessWidget{
  const lengthchkmenu({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          centerTitle: true,
          title: Text('LENGTH OPS ') ,
          titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
              },
            )
          ],
        ),
        body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:<Widget>[
              Text("Given value is in -",style: GoogleFonts.oleoScriptSwashCaps(color: Colors.red[400],fontSize: 40)),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, //background color of button
                    side: BorderSide(width:3, color:Colors.brown), //border width and color
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(20) //content padding inside button
                ),

                onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const mchkpage()));
                },
                child: Row( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.cable,size: 50),
                    Text("meters",style: TextStyle(color: Colors.white,fontSize: 40))
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, //background color of button
                    side: BorderSide(width:3, color:Colors.brown), //border width and color
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(20) //content padding inside button
                ),

                onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const cmchkpage()));
                },
                child: Row( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.cable,size:50),
                    Text("CENTIMETERS", style: TextStyle(color: Colors.white,fontSize: 40))
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, //background color of button
                    side: BorderSide(width:3, color:Colors.brown), //border width and color
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(20) //content padding inside button
                ),

                onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const kmchkpage()));
                },
                child: Row( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.cable,size: 50),
                    Text("KILOMETERS",style: TextStyle(color: Colors.white,fontSize: 40))
                  ],
                ),
              ),
            ],
          ),
        )
    );

  }
}
//lengthmenu
class weightchkmenu extends StatelessWidget{
  const weightchkmenu({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          centerTitle: true,
          title: Text('WEIGHT OPS ') ,
          titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
              },
            )
          ],
        ),
        body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:<Widget>[
              Text("Given value is in -",style: GoogleFonts.oleoScriptSwashCaps(color: Colors.red[400],fontSize: 40)),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, //background color of button
                    side: BorderSide(width:3, color:Colors.brown), //border width and color
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(20) //content padding inside button
                ),

                onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const kgchkpage()));
                },
                child: Row( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.scale_outlined,size: 50),
                    Text("KILOGRAMS",style: TextStyle(color: Colors.white,fontSize: 40))
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, //background color of button
                    side: BorderSide(width:3, color:Colors.brown), //border width and color
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(20) //content padding inside button
                ),

                onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const gchkpage()));
                },
                child: Row( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.scale_outlined,size:50),
                    Text("GRAMS", style: TextStyle(color: Colors.white,fontSize: 40))
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent, //background color of button
                    side: BorderSide(width:3, color:Colors.brown), //border width and color
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    padding: EdgeInsets.all(20) //content padding inside button
                ),

                onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const mgchkpage()));
                },
                child: Row( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.scale_outlined,size: 50),
                    Text("MILLIGRAMS",style: TextStyle(color: Colors.white,fontSize: 40))
                  ],
                ),
              ),
            ],
          ),
        )
    );

  }
}
//weight menu

//tempchk  operations
class celchkpage extends StatefulWidget {
  const celchkpage({super.key});

  @override
  State<celchkpage> createState() => _celchkpageState();
}
class _celchkpageState extends State<celchkpage> {

  final myController = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    myController2.dispose();
    myController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(' CELSIUS OPS ') ,
        titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
            },
          )
        ],
      ),
      body:
      Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children:[
              Text("Enter temperature in celsius:",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController,
              ),
              Text("Enter temperature in farenheit:",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController2,
              ),
              Text("Enter temperature in kelvin:",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController3,
              ),]
            ,
          )
      ),
      floatingActionButton:SizedBox(
          height:100,
          width:100,
          child :FloatingActionButton(
            child:Text("CHECK"),
            backgroundColor: Colors.red,
            onPressed: () {
              double f = celsius1(double.parse(myController.text));
              double k = celsius2(double.parse(myController.text));
              double f1 = double.parse(myController2.text);
              double k1 = double.parse(myController3.text);
              if((f==f1)&(k==k1)){
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content:Center(
                        child:Text("CORRECT"),),
                      actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                        child: Text('OK'),
                      ),
                      ],

                    );
                  },
                );

              }
              else {
                Vibration.vibrate(duration:2000);
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content:Center(
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Text("TEMPERATURE IN FARENHEIT:"),
                            Text(celsius1(double.parse(myController.text)).toString()),
                            Text("TEMPERATURE IN KELVIN:"),
                            Text(celsius2(double.parse(myController.text)).toString()),
                          ],
                        ),
                      ),
                      actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                        child: Text('OK'),
                      ),
                      ],
                    );
                  },
                );
              }
            },

          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class kelchkpage extends StatefulWidget {
  const kelchkpage({super.key});

  @override
  State<kelchkpage> createState() => _kelchkpageState();
}
class _kelchkpageState extends State<kelchkpage> {

  final myController = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    myController2.dispose();
    myController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(' KELVIN OPS ') ,
        titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
            },
          )
        ],
      ),
      body:
      Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children:[
              Text("Enter temperature in kelvin:",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController,
              ),
              Text("Enter temperature in celsius:",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController2,
              ),
              Text("Enter temperature in farenheit:",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController3,
              ),]
            ,
          )
      ),
      floatingActionButton:SizedBox(
          height:100,
          width:100,
          child :FloatingActionButton(
            child:Text("CHECK"),
            backgroundColor: Colors.red,
            onPressed: () {
              double c = kelvin1(double.parse(myController.text));
              double f = kelvin2(double.parse(myController.text));
              double c1 = double.parse(myController2.text);
              double f1 = double.parse(myController3.text);
              if((c==c1)&(f==f1)){
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content:Center(
                        child: Text("CORRECT"),

                      ),
                      actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                        child: Text('OK'),
                      ),
                      ],
                    );
                  },
                );

              }
              else {
                Vibration.vibrate(duration:2000);
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content:Center(
                          child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Text("TEMPERATURE IN CELSIUS:"),
                                Text(kelvin1(double.parse(myController.text)).toString()),
                                Text("TEMPERATURE IN FARENHEIT:"),
                                Text(kelvin2(double.parse(myController.text)).toString()),
                              ]
                          )


                      ),
                      actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                        child: Text('OK'),
                      ),
                      ],
                    );
                  },
                );
              }
            },

          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class farenchkpage extends StatefulWidget {
  const farenchkpage({super.key});

  @override
  State<farenchkpage> createState() => _farenchkpageState();
}
class _farenchkpageState extends State<farenchkpage> {

  final myController = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    myController2.dispose();
    myController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(' FARENHEIT OPS ') ,
        titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
            },
          )
        ],
      ),
      body:
      Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children:[
              Text("Enter temperature in farenheit:",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController,
              ),
              Text("Enter temperature in celsius:",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController2,
              ),
              Text("Enter temperature in kelvin:",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController3,
              ),]
            ,
          )
      ),
      floatingActionButton:SizedBox(
          height:100,
          width:100,
          child :FloatingActionButton(
            child:Text("CHECK"),
            backgroundColor: Colors.red,
            onPressed: () {
              double c = faren1(double.parse(myController.text));
              double k = faren2(double.parse(myController.text));
              double c1 = double.parse(myController2.text);
              double k1 = double.parse(myController3.text);
              if((c==c1)&(k==k1)){

                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content:Center(
                        child: Text("CORRECT"),

                      ),
                      actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                        child: Text('OK'),
                      ),
                      ],
                    );
                  },
                );

              }
              else {
                Vibration.vibrate(duration:2000);
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content:Center(
                          child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Text("TEMPERATURE IN CELSIUS:"),
                                Text(kelvin1(double.parse(myController.text)).toString()),
                                Text("TEMPERATURE IN KELVIN:"),
                                Text(kelvin2(double.parse(myController.text)).toString()),
                              ]
                          )

                      ),
                      actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                        child: Text('OK'),
                      ),
                      ],
                    );
                  },
                );
              }
            },

          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

//speedchk operations

class mschkpage extends StatefulWidget {
  const mschkpage({super.key});

  @override
  State<mschkpage> createState() => _mschkpageState();
}
class _mschkpageState extends State<mschkpage> {

  final myController = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    myController2.dispose();
    myController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(' METER/SEC OPS ') ,
        titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
            },
          )
        ],

      ),
      body:
      Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children:[
              Text("Enter speed in m/s",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController,
              ),
              Text("Enter speed in kmph:",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController2,
              ),
              Text("Enter speed in mph",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController3,
              ),]
            ,
          )
      ),
      floatingActionButton:SizedBox(
          height:100,
          width:100,
          child :FloatingActionButton(
            child:Text("CHECK"),
            backgroundColor: Colors.red,
            onPressed: () {
              double kmph = ms2kh(double.parse(myController.text));
              double mph = ms2mph(double.parse(myController.text));
              double kmph1 = double.parse(myController2.text);
              double mph1 = double.parse(myController3.text);
              if((kmph==kmph1)&(mph==mph1)){

                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content:Center(
                        child: Text("CORRECT"),

                      ),
                      actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                        child: Text('OK'),
                      ),
                      ],
                    );
                  },
                );

              }
              else {
                Vibration.vibrate(duration:2000);
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content:Center(
                          child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Text("SPEED IN KMPH:"),
                                Text(ms2kh(double.parse(myController.text)).toString()),
                                Text("SPEED IN MPH"),
                                Text(ms2mph(double.parse(myController.text)).toString()),
                              ]
                          )

                      ),
                      actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                        child: Text('OK'),
                      ),
                      ],
                    );
                  },
                );
              }
            },

          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class khchkpage extends StatefulWidget {
  const khchkpage({super.key});

  @override
  State<khchkpage> createState() => _khchkpageState();
}
class _khchkpageState extends State<khchkpage> {

  final myController = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    myController2.dispose();
    myController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(' KILOMETER/HOUR OPS ') ,
        titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
            },
          )
        ],
      ),
      body:
      Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children:[
              Text("Enter speed in kmph",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController,
              ),
              Text("Enter speed in m/s:",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController2,
              ),
              Text("Enter speed in mph",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController3,
              ),]
            ,
          )
      ),
      floatingActionButton:SizedBox(
          height:100,
          width:100,
          child :FloatingActionButton(
            child:Text("CHECK"),
            backgroundColor: Colors.red,
            onPressed: () {
              double m = kh2ms(double.parse(myController.text));
              double mph = kh2mph(double.parse(myController.text));
              double m1 = double.parse(myController2.text);
              double mph1 = double.parse(myController3.text);
              if((m==m1)&(mph==mph1)){
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content:Center(
                        child: Text("CORRECT"),

                      ),
                      actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                        child: Text('OK'),
                      ),
                      ],
                    );
                  },
                );

              }
              else {
                Vibration.vibrate(duration:2000);
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content:Center(
                        child: Text("INCORRECT"),

                      ),
                      actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                          child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Text("SPEED IN M/S:"),
                                Text(kh2ms(double.parse(myController.text)).toString()),
                                Text("SPEED IN MPH:"),
                                Text(kh2mph(double.parse(myController.text)).toString()),
                              ]
                          )                      ),
                      ],
                    );
                  },
                );
              }
            },

          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class mphchkpage extends StatefulWidget {
  const mphchkpage({super.key});

  @override
  State<mphchkpage> createState() => _mphchkpageState();
}
class _mphchkpageState extends State<mphchkpage> {

  final myController = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    myController2.dispose();
    myController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(' MILES PER HOUR  OPS ') ,
        titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
            },
          )
        ],
      ),
      body:
      Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children:[
              Text("Enter speed in mph",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController,
              ),
              Text("Enter speed in m/s:",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController2,
              ),
              Text("Enter speed in kmph",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController3,
              ),]
            ,
          )
      ),
      floatingActionButton:SizedBox(
          height:100,
          width:100,
          child :FloatingActionButton(
            child:Text("CHECK"),
            backgroundColor: Colors.red,
            onPressed: () {
              double m = mph2ms(double.parse(myController.text));
              double kmph = mph2kh(double.parse(myController.text));
              double m1 = double.parse(myController2.text);
              double kmph1 = double.parse(myController3.text);
              if((kmph==kmph1)&(m==m1)){
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content:Center(
                        child: Text("CORRECT"),

                      ),
                      actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                        child: Text('OK'),
                      ),
                      ],
                    );
                  },
                );

              }
              else {
                Vibration.vibrate(duration:2000);
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content:Center(
                          child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Text("SPEED IN M/S:"),
                                Text(mph2ms(double.parse(myController.text)).toString()),
                                Text("SPEED IN KMPH"),
                                Text(mph2kh(double.parse(myController.text)).toString()),
                              ]
                          )

                      ),
                      actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                        child: Text('OK'),
                      ),
                      ],
                    );
                  },
                );
              }
            },

          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}


//length chk operations

class mchkpage extends StatefulWidget {
  const mchkpage({super.key});

  @override
  State<mchkpage> createState() => _mchkpageState();
}
class _mchkpageState extends State<mchkpage> {

  final myController = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    myController2.dispose();
    myController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(' METER OPS ') ,
        titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
            },
          )
        ],
      ),
      body:
      Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children:[
              Text("Enter length in m:",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController,
              ),
              Text("Enter length in cm:",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController2,
              ),
              Text("Enter length in km:",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController3,
              ),]
            ,
          )
      ),
      floatingActionButton:SizedBox(
          height:100,
          width:100,
          child :FloatingActionButton(
            child:Text("CHECK"),
            backgroundColor: Colors.red,
            onPressed: () {
              double km = m2km(double.parse(myController.text));
              double cm = m2cm(double.parse(myController.text));
              double cm1 = double.parse(myController2.text);
              double km1 = double.parse(myController3.text);
              if((km==km1)&(cm==cm1)){

                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content:Center(
                        child: Text("CORRECT"),

                      ),
                      actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                        child: Text('OK'),
                      ),
                      ],
                    );
                  },
                );

              }
              else {Vibration.vibrate(duration:2000);
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content:Center(
                        child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text("LENGTH IN KM:"),
                              Text(m2km(double.parse(myController.text)).toString()),
                              Text("SPEED IN CM"),
                              Text(m2cm(double.parse(myController.text)).toString()),
                            ]
                        )

                    ),
                    actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                      child: Text('OK'),
                    ),
                    ],
                  );
                },
              );
              }
            },

          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}


class cmchkpage extends StatefulWidget {
  const cmchkpage({super.key});

  @override
  State<cmchkpage> createState() => _cmchkpageState();
}
class _cmchkpageState extends State<cmchkpage> {

  final myController = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    myController2.dispose();
    myController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(' CENTIMETER OPS ') ,
        titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
            },
          )
        ],
      ),
      body:
      Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children:[
              Text("Enter length in cm :",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController,
              ),
              Text("Enter length in m :",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController2,
              ),
              Text("Enter speed in km:",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController3,
              ),]
            ,
          )
      ),
      floatingActionButton:SizedBox(
          height:100,
          width:100,
          child :FloatingActionButton(
            child:Text("CHECK"),
            backgroundColor: Colors.red,
            onPressed: () {
              double m = cm2m(double.parse(myController.text));
              double km = cm2km(double.parse(myController.text));
              double m1 = double.parse(myController2.text);
              double km1 = double.parse(myController3.text);
              if((km==km1)&(m==m1)){
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content:Center(
                        child: Text("CORRECT"),

                      ),
                      actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                        child: Text('OK'),
                      ),
                      ],
                    );
                  },
                );

              }
              else {
                Vibration.vibrate(duration:2000);
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content:Center(
                          child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Text("LENGTH IN M:"),
                                Text(cm2m(double.parse(myController.text)).toString()),
                                Text("LENGTH IN KM"),
                                Text(cm2km(double.parse(myController.text)).toString()),
                              ]
                          )
                      ),
                      actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                          child:Text("OK")
                      ),
                      ],
                    );
                  },
                );
              }
            },

          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}


class kmchkpage extends StatefulWidget {
  const kmchkpage({super.key});

  @override
  State<kmchkpage> createState() => _kmchkpageState();
}
class _kmchkpageState extends State<kmchkpage> {

  final myController = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    myController2.dispose();
    myController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(' KILOMETER OPS ') ,
        titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
            },
          )
        ],
      ),
      body:
      Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children:[
              Text("Enter length in Km",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController,
              ),
              Text("Enter length in m:",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController2,
              ),
              Text("Enter length in cm",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController3,
              ),]
            ,
          )
      ),
      floatingActionButton:SizedBox(
          height:100,
          width:100,
          child :FloatingActionButton(
            child:Text("CHECK"),
            backgroundColor: Colors.red,
            onPressed: () {
              double cm = km2cm(double.parse(myController.text));
              double m = km2m(double.parse(myController.text));
              double m1 = double.parse(myController2.text);
              double cm1 = double.parse(myController3.text);
              if((cm==cm1)&(m==m1)){
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content:Center(
                        child: Text("CORRECT"),

                      ),
                      actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                        child: Text('OK'),
                      ),
                      ],
                    );
                  },
                );

              }
              else {
                Vibration.vibrate(duration: 2000);
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content:Center(
                          child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Text("LENGTH IN CM:"),
                                Text(km2cm(double.parse(myController.text)).toString()),
                                Text("LENGTH IN M:"),
                                Text(km2m(double.parse(myController.text)).toString()),
                              ]
                          )

                      ),
                      actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                        child: Text('OK'),
                      ),
                      ],
                    );
                  },
                );
              }
            },

          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

//weight chk operations

class kgchkpage extends StatefulWidget {
  const kgchkpage({super.key});

  @override
  State<kgchkpage> createState() => _kgchkpageState();
}
class _kgchkpageState extends State<kgchkpage> {

  final myController = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    myController2.dispose();
    myController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(' KILOGRAM OPS ') ,
        titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
            },
          )
        ],
      ),
      body:
      Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children:[
              Text("Enter weight in Kg",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController,
              ),
              Text("Enter weight in g:",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController2,
              ),
              Text("Enter weight in mg",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController3,
              ),]
            ,
          )
      ),
      floatingActionButton:SizedBox(
          height:100,
          width:100,
          child :FloatingActionButton(
            child:Text("CHECK"),
            backgroundColor: Colors.red,
            onPressed: () {
              double g = kg2g(double.parse(myController.text));
              double mg = kg2mg(double.parse(myController.text));
              double g1 = double.parse(myController2.text);
              double mg1 = double.parse(myController3.text);
              if((g==g1)&(mg==mg1)){

                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content:Center(
                        child: Text("CORRECT"),

                      ),
                      actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                        child: Text('OK'),
                      ),
                      ],
                    );
                  },
                );

              }
              else {
                Vibration.vibrate(duration:2000);
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content:Center(
                        child: Text("INCORRECT"),

                      ),
                      actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                        child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text("WEIGHT IN G:"),
                              Text(kg2g(double.parse(myController.text)).toString()),
                              Text("WEIGHT IN Mg:"),
                              Text(kg2mg(double.parse(myController.text)).toString()),
                            ]
                        ),
                      ),
                      ],
                    );
                  },
                );
              }
            },

          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}


class gchkpage extends StatefulWidget {
  const gchkpage({super.key});

  @override
  State<gchkpage> createState() => _gchkpageState();
}
class _gchkpageState extends State<gchkpage> {

  final myController = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    myController2.dispose();
    myController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(' GRAM OPS ') ,
        titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
            },
          )
        ],
      ),
      body:
      Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children:[
              Text("Enter weight in g",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController,
              ),
              Text("Enter weight in kg:",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController2,
              ),
              Text("Enter weight in mg",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController3,
              ),]
            ,
          )
      ),
      floatingActionButton:SizedBox(
          height:100,
          width:100,
          child :FloatingActionButton(
            child:Text("CHECK"),
            backgroundColor: Colors.red,
            onPressed: () {
              double kg = g2kg(double.parse(myController.text));
              double mg = g2mg(double.parse(myController.text));
              double kg1 = double.parse(myController2.text);
              double mg1 = double.parse(myController3.text);
              if((kg==kg1)&(mg==mg1)){
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content:Center(
                        child: Text("CORRECT"),

                      ),
                      actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                        child: Text('OK'),
                      ),
                      ],
                    );
                  },
                );

              }
              else {
                Vibration.vibrate(duration:2000);
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content:Center(
                        child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text("WEIGHT IN Kg:"),
                              Text(g2kg(double.parse(myController.text)).toString()),
                              Text("WEIGHT IN Mg:"),
                              Text(g2mg(double.parse(myController.text)).toString()),
                            ]
                        ),
                      ),
                      actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                        child: Text('OK'),
                      ),
                      ],
                    );
                  },
                );
              }
            },

          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}


class mgchkpage extends StatefulWidget {
  const mgchkpage({super.key});

  @override
  State<mgchkpage> createState() => _mgchkpageState();
}
class _mgchkpageState extends State<mgchkpage> {

  final myController = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    myController2.dispose();
    myController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text('MILLI GRAM OPS ') ,
        titleTextStyle: GoogleFonts.dancingScript(fontSize: 40),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const homepage()));
            },
          )
        ],
      ),
      body:
      Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children:[
              Text("Enter weight in mg",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController,
              ),
              Text("Enter weight in kg:",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController2,
              ),
              Text("Enter weight in g",style: TextStyle(color: Colors.redAccent,fontSize: 20)),
              TextField(
                keyboardType:TextInputType.numberWithOptions(decimal: true),
                controller: myController3,
              ),]
            ,
          )
      ),
      floatingActionButton:SizedBox(
          height:100,
          width:100,
          child :FloatingActionButton(
            child:Text("CHECK"),
            backgroundColor: Colors.red,
            onPressed: () {
              double kg = mg2kg(double.parse(myController.text));
              double g = mg2g(double.parse(myController.text));
              double kg1 = double.parse(myController2.text);
              double g1 = double.parse(myController3.text);
              if((kg==kg1)&(g==g1)){
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content:Center(
                        child: Text("CORRECT"),

                      ),
                      actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                        child: Text('OK'),
                      ),
                      ],
                    );
                  },
                );

              }
              else {
                Vibration.vibrate(duration:1000);
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content:Center(
                        child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text("WEIGHT IN G:"),
                              Text(mg2g(double.parse(myController.text)).toString()),
                              Text("WEIGHT IN Kg:"),
                              Text(mg2kg(double.parse(myController.text)).toString()),
                            ]
                        ),

                      ),
                      actions: [ElevatedButton(onPressed: () => Navigator.pop(context), // passing false
                        child: Text('OK'),
                      ),
                      ],
                    );
                  },
                );
              }
            },

          )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}



