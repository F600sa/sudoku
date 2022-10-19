import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override

final  myControlloer = TextEditingController();
  Widget build(BuildContext context) {
    return MaterialApp(

        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar:AppBar(actions: [IconButton(
            onPressed: (){},
            icon: Icon(Icons.restart_alt_sharp),

          ),

          IconButton(
            onPressed: (){},
            icon: Icon(Icons.notification_important),
          ),]
          ) ,
          floatingActionButton: FloatingActionButton.small(onPressed: (){}),
          
          body: Column(
            children: [
              Container(
                child: Expanded(
                  child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      ),
                      itemCount: 9,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                            child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                          ),
                          itemCount: 9,
                          itemBuilder: (BuildContext context,  int index) {
                            return Container(
                              
                                // color: Color.fromARGB(255, 188, 189, 165),
                                child:  TextField(
                                  
                                  // controller: myControlloer,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    hintText: "${index+1}",
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black,width: 1),
                                      
                                      
                                      
                                    ),
                                  ),
                                ),
                                
                                );
                          },
                        ),);
                      }),
                      
                ),
                    
                  
              ),
              ElevatedButton(onPressed: (){}, child: Text("Run"),),
 ],
          ),
          
          
        
        ),);
      
  }
  void main(){
    print(myControlloer);
  }
}
