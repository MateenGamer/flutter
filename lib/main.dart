import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
         MaterialApp(
          title: "hellow world travel",
          home: Scaffold(
            appBar: AppBar(title: Text("this is my app"),
            backgroundColor: Colors.red,),
            body:  Builder(builder: (context)=>
               SingleChildScrollView(
                 child: Padding( padding: const EdgeInsets.all(30),
                   child: Center(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center
                    ,children:[
                       Padding(padding: EdgeInsets.all(20),
                         child: Text("hellow world travel ",
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[100],
                      ),
                      textDirection: TextDirection.ltr),
                       ),
                      Padding(padding: EdgeInsets.all(20),
                        child: Text("new text ",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[100],
                            ),
                            textDirection: TextDirection.ltr),
                      ),
                      Padding(padding: EdgeInsets.all(30),
                        child: Image.network(
                          'https://images.freeimages.com/images/large-previews/eaa/the-beach-1464354.jpg',
                          height: 350,
                        ),
                      ),
                      const SizedBox(height: 10)
                      ,Padding( padding: EdgeInsets.all(20),
                        child: ElevatedButton(onPressed: ()=>contectUs(context),
                            style: const ButtonStyle( )
                            ,child:const Text("click")),
                      )
                    ])
              ),
                 ),
               ),
            ),
          ),
        );
  }
}

void contectUs(BuildContext context)
{
  showDialog(context: context, builder:(BuildContext context){
    return AlertDialog(
      title: Text("contect us"),
        content:Text("contect us mateen159357@gmail.com"),
      actions: [
        TextButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            child: Text('CENCEL'))
      ],
    );

  } );


}